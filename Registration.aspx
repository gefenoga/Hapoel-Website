<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Registration </title>
    <link rel="stylesheet" type="text/css" href="Style/Styles.css" />
    <script type="text/javascript">  
        var strMassage;

        function checkForm() {
            var flag;
            flag = isValidName(document.getElementById("fName").value);
            if (flag == false) {
                window.alert("invalid first name");
                return false;
            }
            flag = isValidName(document.getElementById("lName").value);
            if (flag == false) {
                window.alert("invalid last name");
                return false;
            }
            flag = isValidUser(document.getElementById("uName").value);
            if (flag == false) {
                window.alert("invalid user name");
                return false;
            }
            flag = isValidPass(document.getElementById("pass").value);
            if (flag == false) {
                window.alert("invalid password");
                return false;
            }
            flag = isValidConPass(document.getElementById("confirmPassword").value);
            if (flag == false) {
                window.alert("invalid confirm password");
                return false;
            }
            flag = isValidEmail(document.getElementById("email").value);
            if (flag == false) {
                window.alert("invalid email");
                return false;
            }
            flag = isValidPhone(document.getElementById("phone").value);
            if (flag == false) {
                window.alert("invalid phone");
                return false;
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

        function isValidConPass(a) {
            var x = document.getElementById("pass").value;
            if (x != a) {
                strMassage = "Your confirm password value has to be the same as your password";
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
                window.alert("invalid email");
                return false;
            }
            if (email.length <= 0) {
                window.alert("invalid email");
                return false;
            }
            return true;
        }

        function isValidPhone(str) {
            var place;
            for (var i = 0; i < str.length; i++) {
                var place = str.charAt(i);
                if (!(place != 9) || (place == "-")) {
                    window.alert("invalid phone number");
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
    <p id="TitleDesign">Sign Up</p>
    <div class="container">
        <form id="myForm" runat="server" method="post" action="" onsubmit="return checkForm()">
            <div class="row">
                <div class="col-25">
                    <label for="fname">First Name: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="fName" id="fName" placeholder="First Name..." required="required" />
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="lname">Last Name: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="lName" id="lName" placeholder="Last Name..." required="required" />

                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="uname">User Name: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="uName" id="uName" placeholder="User Name..." required="required" />
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="pass">Password: </label>
                </div>
                <div class="col-75">
                    <input type="password" name="pass" id="pass" size="20" placeholder="Password..." required="required" />
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="confirmPassword">Confirm Password: </label>
                </div>
                <div class="col-75">
                    <input type="password" name="confirmPassword" id="confirmPassword" size="20" placeholder="Confirm Password..." required="required" />
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="email">Email: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="email" id="email" size="20" placeholder="Email..." required="required" />
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="gender">Gender: </label>
                </div>
                <div class="col-75">
                    <input type="radio" id="male" name="gender" /><label for="male">Male</label>
                    <input type="radio" id="female" name="gender" /><label for="female">Female</label>
                    <input type="radio" id="other" name="gender" /><label for="other">Other</label>
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="phone">Phone Number: </label>
                </div>
                <div class="col-75">
                    <input type="text" name="phone" id="phone" size="20" placeholder="Phone Number..." required="required" />
                </div>
            </div>
            <div class="row">
                <div class="col-25">
                    <label for="Birthday">Birthday:</label>
                </div>
                <div class="col-75">
                    <input type="date" name="birthday" id="birthday" />
                </div>
            </div>
            <div class="row">
                <input type="reset" name="reset" id="reset" value="reset" />
                <input type="submit" name="submit" id="submit" value="submit" onclick="checkForm()" />

            </div>
        </form>
    </div>
    <div style="background-color: #f2f2f2; color:black; margin: auto; width: 60%; height: 30px; position: relative;">
        <p style="text-align: center;"><%= userMsg%></p>
    </div>
</body>
</html>
