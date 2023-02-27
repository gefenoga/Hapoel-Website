<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProtectedItem.aspx.cs" Inherits="ProtectedItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Video</title>
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
        <a>Hello Guest</a>
        <%}
            else
            {%>
        <a href="Home.aspx?logout=true" class="hello">Log out</a>
        <a href="OpenAll.aspx" class="hello">About the franchise</a>
        <a href="ProtectedItem.aspx" class="hello" id="active">Video</a>
        <a>Hello <%= Session["Uname"]%></a>
        <%} %>
    </div>
    <!-- WATERMARK + TOOL BAR - END -->
    <p id="TitleDesign">2019/2020 Games</p>
    <div id="videos">
        <div class="section">
            <ol>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/TzVFHEYjq8U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 1 vs Hapoel Holon</i>

                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/gxelGc4zIy0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 2 vs Hapoel Jerusalem</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/h-orgPS09dw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 3 vs Maccabi Ashdod</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/FeXJojeDRRg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 4 vs Ironi Naharia</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/RsVIzWxLACY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 5 vs Hapoel Gilboa/Galil</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/2v-bjeTmxQc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 6 vs Maccabi Haifa</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/4KJs2oXOxqY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 7 vs Maccabi Rishon Lezion</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/-auQNXjFUag" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 8 vs Hapoel Beer Sheva</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/_JCYn2zHDRU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 9 vs Hapoel Eilat</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/1q6TMc8SSzc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 10 vs Maccabi Tel Aviv</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/SmzOM6a_JyM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 11 vs Ironi Nes Ziona</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/FXaooWm3-rk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 12 vs Maccabi Rishon Lezion</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/yis-j07pw5Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 13 vs Hapoel Gilboa/Galil</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/THXyXkxEKzY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 14 vs Maccabi Ashdod</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/4j6SK9L3mEU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 15 vs Hapoel Eilat</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/pFDmhcomIa0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 16 vs Hapoel Beer Sheva</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/FGGalfxVzTQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 17 vs Maccabi Tel Aviv</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/DRc-_d5jj2M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 18 vs Hapoel Jerusalem</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/MNuLKlJeZE4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 19 vs Hapoel Holon</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/ipprAOq9NaI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 20 vs Ironi Nes Ziona</i>
                </li>
                <li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/rm_W4EzF0ys" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <i>Game 21 vs Ironi Naharia</i>
                </li>

            </ol>
        </div>
    </div>
</body>
</html>
