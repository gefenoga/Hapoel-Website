<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HTA Fan Page </title>
    <link rel="stylesheet" type="text/css" href="Style/Styles.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <script>
        var myIndex = 0;
        function carousel() {
            var x = document.getElementsByClassName("mySlides");
            for (var i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) { myIndex = 1 }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 2000); // Change image every 2 seconds
        }
    </script>
</head>   
<body onload="carousel()">
    <!-- WATERMARK + TOOL BAR-->
    <div id="watermark"></div>
    <div class="ToolBarBack">
        <a href="Home.aspx" id="imageButton" >
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

    <br />
    <div class="slideWrapper">
        <div class="w3-content w3-section" style="max-width: 600px;">
            <img class="mySlides" src="Images/Drivein.jpg" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans.jpg" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans2.jpg" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelPlayers.jpg" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans3.jpg" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans4.jpg" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/Roster.png" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans5.png" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans6.png" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans7.png" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans8.png" style="width: 807px; height: 550px"/>
            <img class="mySlides" src="Images/HapoelFans9.png" style="width: 807px; height: 550px"/>
        </div>
    </div>
    <br />
    <br />

    <div class="wrap-table">
        <table class="leaguetable">
            <thead>
                <tr>
                    <th>Rank</th>
                    <th>Team</th>
                    <th>Wins</th>
                    <th>Loses</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Maccabi Tel Aviv</td>
                    <td>19</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Hapoel jerusalem</td>
                    <td>17</td>
                    <td>4</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Maccabi Rishon Lezion</td>
                    <td>13</td>
                    <td>8</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Hapoel Holon</td>
                    <td>12</td>
                    <td>9</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Maccabi Haifa</td>
                    <td>11</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Ironi Nes Ziona</td>
                    <td>10</td>
                    <td>11</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Hapoel Gilboa/Galil</td>
                    <td>9</td>
                    <td>12</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Hapoel Eilat</td>
                    <td>8</td>
                    <td>13</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td><b>Hapoel Tel Aviv</b></td>
                    <td>8</td>
                    <td>13</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Ironi Naharia</td>
                    <td>8</td>
                    <td>13</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>Hapoel Beer Sheva</td>
                    <td>7</td>
                    <td>14</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>Maccabi Ashdod</td>
                    <td>4</td>
                    <td>17</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="footer">
        <p>Developed by Gefen Noga, Hakfar Hayarok</p>
    </div>
</body>
</html>
