<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurrentRoster.aspx.cs" Inherits="CurrentRoster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>current roster</title>
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
    <p id="TitleDesign">Current Roster</p>

    <div class="PlayersNames">
        <table>
            <tr>
                <td>#1 Daniel Kuperberg</td>
                <td>
                    <img src="Images/DKuperberg.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#2 Latavious Williams</td>
                <td>
                    <img src="Images/LWilliams.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#3 Shahar Lazar</td>
                <td>
                    <img src="Images/SLazar.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#4 Carem Mashur</td>
                <td>
                    <img src="Images/CMashur.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#6 Itay Binman</td>
                <td>
                    <img src="Images/IBinman.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#7 Ariel Lahovich</td>
                <td>
                    <img src="Images/ALahovich.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#8 Joaquin Szuchman</td>
                <td>
                    <img src="Images/HSzuchman.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#10 Mark Lyons</td>
                <td>
                    <img src="Images/MLyons.png" class="tbl_img" />
                </td>
            </tr>
            <tr>
                <td>#11 Yam Madar</td>
                <td>
                    <img src="Images/YMadar.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#18 Omer Ben David</td>
                <td>
                    <img src="Images/OBen david.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#20 Omer Harel</td>
                <td>
                    <img src="Images/OHarel.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#22 Sek Henry</td>
                <td>
                    <img src="Images/SHenry.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#23 Ofek Gol</td>
                <td>
                    <img src="Images/OGol.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#25 Jordan Hamilton</td>
                <td>
                    <img src="Images/JHamilton.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#32 Lenzell Smith JR</td>
                <td>
                    <img src="Images/LSmith.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#41 Tomer Ginat</td>
                <td>
                    <img src="Images/TGinat.png" class="tbl_img" /></td>
            </tr>
            <tr>
                <td>#99 Amitay Rotem</td>
                <td>
                    <img src="Images/ARotem.png" class="tbl_img" /></td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    <br />
</body>
</html>
