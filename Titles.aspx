<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Titles.aspx.cs" Inherits="Titles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titles</title>
    <link rel="stylesheet" type="text/css" href="Style/Styles.css" />
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
    <p id="TitleDesign">Titles</p>
    <div class="content">
        <ul>
            <li>Israel's Champions- 1959/1960</li>
            <li>Israel's Champions- 1960/1961</li>
            <li>Israel's Champions- 1964/1965</li>
            <li>Israel's Champions- 1968/1969</li>
            <li>Israeli Cup Champions- 1961/1962</li>
            <li>Israeli Cup Champions- 1968/1969</li>
            <li>Israeli Cup Champions- 1983/1984</li>
            <li>Israeli Cup Champions- 1992/1993</li>
        </ul>
    </div>
    <img src="Images/Hapoel 1992 1993.jpg" id="Hapoel9293" />
    <div id="imagetext3">
        <p>Hapoel Tel-Aviv's roster in 1992/1993 season</p>
    </div>
</body>
</html>
