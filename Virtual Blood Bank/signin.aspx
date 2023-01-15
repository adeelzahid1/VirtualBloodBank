<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="Virtual_Blood_Bank.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/custome.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />

    <style>
        #wrapper {
            background-image: url("img/red-blood-cells.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 85vh;
            margin-top: 5px;
        }

        .TextFieldUpperText {
            color: Black;
            font-weight: bold;
            margin-bottom: 0px;
        }

        .content {
            background-color: gray;
            opacity: 0.8;
            border: 1px solid red;
            border-radius: 15px;
            margin: 100px 0px;
        }
        .container{
            
        }
    </style>
    <%--<script type="text/javascript">
        function ShowPassword(checkbox) {
            var passwordText = document.getElementById('loginPassword');
            if (checkbox.checked == true) {
                passwordText.setAttribute("type", "text");
            }
            else {
                passwordText.setAttribute("type", "password");
            }
        }
    </script>--%>

</head>

    
<body>
    <form id="form1" runat="server">
    <div>
         <%--Navigation Bar Code--%>
        <div class="row section">
            <div class="col-3">
                <a href="index.aspx"><img class="logo img-fluid" src="img/logoheader.png" /></a>
            </div>
            <div class="col-9">
                <section>
                    <nav class="fill">
                        <ul>
                            <li><a href="index.aspx" class="active">Home</a></li>
                            <li><a href="Donor.aspx">Donor</a></li>
                            <li><a href="User.aspx">User</a></li>
                            <li><a href="faqs.aspx">FAQS</a></li>
                            <li><a href="#">More</a></li>
                            <li><a href="Registration.aspx">Registration</a></li>
                        </ul>
                    </nav>
                </section>
            </div>

        </div>

        <%--End Navigation Bar Code--%>

        <%--Start Code for Sign In Form--%>
            <div id="wrapper">

        <div class="container">
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4 content">
                    <div class="form-signin">
                        <h2 class="text-white">Sign In</h2>
                        
                        <p class="TextFieldUpperText">Email address </p>
                        <asp:TextBox  ID="loginEmail" class="form-control" placeholder="abc@xyz.com"  runat="server" TextMode="Email"  autofocus="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="loginEmail" Display="Dynamic" Font-Size="Small" ForeColor="red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email" ControlToValidate="loginEmail" Display="Dynamic"  Font-Size="Small" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                        <p class="TextFieldUpperText mt-3">Password </p>
                        <asp:TextBox ID="loginPassword" class="form-control" placeholder="Password" autofocus="true" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Enter your Password" ControlToValidate="loginPassword" Display="Dynamic" Font-Size="Small" ForeColor="red" ></asp:RequiredFieldValidator>
                        <asp:regularexpressionvalidator id="PasswordRegularExpressionValidator" display="Dynamic" Font-Size="Small" ForeColor="red" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="loginPassword" runat="server"></asp:regularexpressionvalidator>
                        <br />

                       
                        <asp:Button class="btn btn-lg btn-success btn-block mt-3" ID="LoginButton" runat="server" Text="Sign In" OnClick="LoginButton_Click" />
                        <a class="text-center text-danger small" href="Forgetpass.aspx">Forget Password</a>
                        <a class="btn btn-danger btn-block mt-3 mb-3" href="Registration.aspx">Not Registerd Yet ! Click Here</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

        <%--End Code Sign in Form--%>
    </div>
    </form>

      <%--<script src="js/jquery.js"></script>--%>
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/custome.js"></script>
</body>
</html>
