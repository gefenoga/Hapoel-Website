<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link rel="stylesheet" type="text/css" href="Style/Styles.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <script type="text/javascript">  
        var strMassage;

        function checkForm() {
            var flag;
            if (getElementById("valUpd") == "firstName") {
                flag = isValidName(document.getElementById("valUpd").value);
                if (flag == false) {
                    window.alert("invalid first name");
                    return false;
                }
            }

            if (getElementById("valUpd") == "lastName") {
                flag = isValidName(document.getElementById("valUpd").value);
                if (flag == false) {
                    window.alert("invalid last name");
                    return false;
                }
            }

            if (getElementById("valUpd") == "userName") {
                flag = isValidUser(document.getElementById("valUpd").value);
                if (flag == false) {
                    window.alert("invalid user name");
                    return false;
                }
            }

            if (getElementById("valUpd") == "pass") {
                flag = isValidPass(document.getElementById("valUpd").value);
                if (flag == false) {
                    window.alert("invalid password");
                    return false;
                }
            }

            if (getElementById("valUpd") == "EmailAdress") {
                flag = isValidEmail(document.getElementById("valUpd").value);
                if (flag == false) {
                    window.alert("invalid email");
                    return false;
                }
            }

            if (getElementById("valUpd") == "PhoneNumber") {
                flag = isValidPhone(document.getElementById("valUpd").value);
                if (flag == false) {
                    window.alert("invalid phone");
                    return false;
                }
             }   
             return true;

        }

        function isValidName(str) {
            var bad = "$%^&*()_+[]{}<>&0123456789";
            for (var i = 0; i < str.length; i++) {
                for (var j = 0; j < bad.length; j++) {
                    if (str.charAt(i) == bad.charAt(j)) {
                        strMassage = "invalid name";
                        return false;
                    }
                }
            }
            var Ulength = str.length;
            if ((Ulength < 3) || (Ulength > 8)) {
                strMassage = "invalid name";
                return false;
            }
            return true;
        }

        function isValidUser(str) {
            var bad = "$%^&*()_+[]{}<>&";
            for (var i = 0; i < str.length; i++) {
                for (var j = 0; j < bad.length; j++) {
                    if (str.charAt(i) == bad.charAt(j)) {
                        strMassage = "invalid user name";
                        return false;
                    }
                }
            }
            var Ulength = str.length;
            if ((Ulength < 4) || (Ulength > 12)) {
                strMassage = "invalid user name";
                return false;
            }
            return true;
        }

        function isValidPass(ps) {
            var a = ps.length;
            if ((a < 4) || (a > 10)) {
                strMassage = "password required length 4-10 characters";
                return false;
            }
            return true;
        }

        function isValidEmail(email) {
            var badCharstr = "'/$%^&*()+-={}[]|\ ";
            var hasTo = "@gmail.com";
            if (!mail.endsWith(hasTo)) {
                return false;
            }
            for (var i = 0; i < email.length; i++) {
                for (var j = 0; j < badCharstr.length; j++) {
                    if (email.charAt(i) == badCharstr.charAt(j)) {
                        return false;
                    }
                }
            }
            var counter = 0;
            var flag = true;
            for (var j = 0; j < email.length && flag == true; j++) {
                if (email.charAt(j) == '@') {
                    flag = false;
                } else {
                    counter++;
                }
            }
            if (counter <= 3) {
                return false;
            }
            if (email.length <= 0) {
                return false;
            }
            return true;
        }

        function isValidPhone(str) {
            var place;
            for (var i = 0; i < str.length; i++) {
                var place = str.charAt(i);
                if (!((place >= 0) && (place <= 9)) || (place == "-")) {
                    window.alert("dfsfsd");
                }
            }
            return true;
        }

    </script>
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
    <p id="TitleDesign">Admin Page</p>
    <br />
    <br />
    <div class="containerTable" >
    <%=usersList%>
    <div style="background-color: #8c8c8c; margin-left:15%;  height: 30px;">
        <p style="text-align: center"> <% =usersCount %> rows in the database</p>
    </div>
    <div style="background-color: #8c8c8c; margin-left:15%; height: 30px;">
        <p style="text-align: center;"><%= Session["userMsg"]%></p>
    </div>
    </div>
    <br />
    <br />
    <br />
    <div class="containerForm" >
        <form runat="server" method="post" action="">
            <div class="row">
                <div class="col-25">
                    <label for="fname">User Name to delete: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="userNameDLT" id="userNameDLT" placeholder="User Name to delete..." />
                </div>
            </div>
            <div class="row">
                <input type="submit" name="delete" id="delete" value="delete" />
            </div>
            <br />
            <div class="row">
                <div class="col-25">
                    <label for="fname">User Name to update: </label>
                </div>
                <div class="col-75">
                    <input type="text"  name="userNameUPD" id="userNameUPD" placeholder="User Name to update..." />
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="fname">Which value to update: </label>
                </div>
                <div class="col-75">
                    <select name="valUpd" id="valUpd">
                        <option>firstName</option>
                        <option>lastName</option>
                        <option>userName</option>
                        <option>pass</option>
                        <option>EmailAdress</option>
                        <option>PhoneNumber</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="fname">To: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="setVal" id="setVal" placeholder="Value to update..." />
                </div>
            </div>
            <div class="row">
                <input type="reset" name="reset" id="reset" value="reset" />
                <input type="submit" name="update" id="update" value="update" onsubmit="checkForm()" />
            </div>
        </form>
    </div>
    
    <br />
    <br />
    <br />
    <br />
</body>
</html>
