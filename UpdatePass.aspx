<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePass.aspx.cs" Inherits="UpdatePass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Password </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="Style/Styles.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    
</head>
<body>
    <!-- WATERMARK + TOOL BAR-->
    <div id="watermark"></div>
    <div class="ToolBarBack">
        <a href="Home.aspx" id="imageButton">
            <img src="Images/HapoelLogo.jpg" class="media-imgs" /></a>
        <%  if (Session != null && Session["Uname"] == null)
                  {%>
            <a href="Login.aspx" class="hello">Log in</a>   
            <a href="OpenAll.aspx" class="hello">About the franchise</a>
            <a> Hello Guest</a> 
        <%}
            else
            {%>
        <a href="Home.aspx?logout=true" class="hello">Log out</a>
        <a href="OpenAll.aspx" class="hello">About the franchise</a>
        <a href="ProtectedItem.aspx" class="hello">Video</a>
        <a> Hello <%= Session["Uname"]%></a>
        <%} %>
    </div>
    <!-- WATERMARK + TOOL BAR - END -->
    <p id="TitleDesign">Update Password</p>
    <div class="container">
        <form method="post" name="myForm">
            <div class="row">
                <div class="col-25">
                    <label for="fname">User Name: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="userName" id="userName" placeholder="User Name..." required="required" /></div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="pass">Old Password: </label>
                </div>
                <div class="col-75">
                    <input type="password" name="oldPass" id="oldPass" size="20" placeholder="Old Password..." required="required" /></div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="pass">New Password: </label>
                </div>
                <div class="col-75">
                    <input type="password" name="newPass" id="newPass" size="20" placeholder="New Password..." required="required" /></div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="pass">Confirm New Password: </label>
                </div>
                <div class="col-75">
                    <input type="password" name="ConNewpass" size="20" placeholder="Confirm New Password..." required="required" /></div>
            </div>
            <br />
            <div class="row">
                <input type="reset" name="reset" id="button2" value="reset"/>
                <input type="submit" name="subEdit" id="button1" value="update"/>
            </div>
        </form>
        <p style="color:red"><%=userMsg %></p>
    </div>
</body>
</html>
