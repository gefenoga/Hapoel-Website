<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html>

<head runat="server">
    <meta charset="UTF-8">
    <title>Log in</title>
    <link rel="stylesheet" type="text/css" href="Style/Styles.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
    <!-- WATERMARK + TOOL BAR-->
    <div id="watermark"></div>
    <div class="ToolBarBack">
        <a href="Home.aspx" id="imageButton">
            <img src="Images/HapoelLogo.jpg" class="media-imgs" /></a>
        <%  if (Session != null && Session["Uname"] == null)
                  {%>
            <a href="Login.aspx" class="hello" id="active">Log in</a>   
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
    <p id="TitleDesign">Log in</p>
    <div class="container">
        <form method="post" name="myForm" runat="server" action="">
            <div class="row">
                <div class="col-25">
                    <label for="fname">User Name: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="userName" id="userName" placeholder="User Name..." required />
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="pass">Password: </label>
                </div>
                <div class="col-75">
                    <input type="password" id="pass" name="pass" size="20" placeholder="Password..." required />
                </div>
            </div>
            <br />
            <div class="row">
                <a href="UpdatePass.aspx" id="linkTitles">Update your Password</a>
            </div>
            <div class="row">
                <a href="Registration.aspx" id="linkTitles">Doesn't have an account? Register here</a>
            </div>
            <div class="row">
                <input type="reset" name="reset" id="reset" value="reset"/>
                <input type="submit" name="submit" id="submit" value="submit"/>
            </div>
        </form>
        <div class="w3-container w3-center w3-animate-zoom">
        <%= userMsg %>
    </div>
    </div>
    


</body>
</html>
