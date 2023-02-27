<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OpenAll.aspx.cs" Inherits="OpenAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About the franchise</title>
    <link rel="stylesheet" type="text/css" href="Style/Styles.css"/>
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
            <a href="OpenAll.aspx" class="hello" id="active">About the franchise</a>
            <a> Hello Guest</a> 
        <%}
            else
            {%>
        <a href="Home.aspx?logout=true" class="hello">Log out</a>
        <a href="OpenAll.aspx" class="hello" id="active">About the franchise</a>
        <a href="ProtectedItem.aspx" class="hello">Video</a>
        <a> Hello <%= Session["Uname"]%></a>
        <%} %>
    </div>
     <!-- WATERMARK + TOOL BAR - END -->
    <p id="TitleDesign">Hapoel Tel Aviv </p> 
    <div class="content">
        <p>
            Hapoel Tel Aviv B.C is one of the most magnificent basketball clubs in Israel.
            The club was establsihed in 1935, and through the 1960s, 1970s and the 1980s Hapoel
            was one of the best clubs in Israel. <br /><br />In the beginning of the 2000s, the franchise's started 
            to deteriorate because of defective management by the owners of those times, at the same time the
            municipality decided to completely destroy the club's mythological home court , Osishkin, and it
            seemed that the club's fate already decided.<br /> <br />But Hapoel's fans understood that they have the power
            to make the difference. Motivated by the responsibility they feel about their club, the fans re-established
            the franchise in 2009, and renamed the club to "Hapoel Osishkin Tel Aviv", which now has one of the best home
            court in Israel - "Shlomo Sixt Stadium", with 3,500 seats.
        </p>
    </div>
    <img src="Images/Hapoel1984 1985.jpg" id="Hapoel8485" />
    <div id="imagetext1">
        <p>Hapoel Tel-Aviv's roster in 1984/1985 season</p>
    </div>
    <img src="Images/Drivein.jpg" id="drivein" />
    <div id="imagetext2">
        <p>Shlomo Sixt Stadium</p>
    </div>
    <div class="listLinks">
        <ul>
            <li><a href="Titles.aspx" id="linkTitles">Titles</a></li>
            <li><a href="CurrentRoster.aspx" id="linkRoster">Current roster</a></li>
        </ul>
    </div>
</body>
</html>