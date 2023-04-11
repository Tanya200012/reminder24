<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8" />
        <!-- Somehow I got an error, so I comment the title, just uncomment to show -->
        <!-- <title>Popup Login Form Design | CodingNepal</title> -->
        <link rel="stylesheet" href="stylee.css" />
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script>
            function validate()
            {
                var email = document.getElementsByClassName(data);
                var password = document.getElementsByClassName(data);

                if(email.value =="" ||password.value=="")
                {
                    alert("no blank values allowed")
                    return false;
                }
                else{
                    return true;

                }

            }
        </script>
    </head>
    <body>
    
        <div class="center">
            <input type="checkbox" id="show" />
            <label for="show" class="show-btn">acxiom</label>
            <div class="container">
                <label
                    for="show"
                    class="close-btn fas fa-times"
                    title="close"
                ></label>
                <div class="text">Login Form</div>
                <form id="form1" runat="server">
                    <div class="data">
                        <label>Email or Phone</label>
                        JITGUH
                    </div>
                    <div class="data">
                        <label>Password</label>
                        NKJHN
                    </div>
                    <div class="forgot-pass">
                        <a href="#">Forgot Password?</a>
                    </div>
                    <div class="btn">
                        <div class="inner"></div>
                        <button type="submit">
                            <asp:Button ID="Button1" runat="server" Height="32px" Text="Button" Width="85px" />
                            login</button>
                        <a href="file:///C:/Users/91955/reminder-2.html">login</a>
                    </div>
                    <div class="login-link">
                    
                    </div>
                    <div class="signup-link">
                        Not a member? <a href="#>Signup now</a>
                    </div>
                </form>
            </div>
        </div>
    
    </body>
</html>
