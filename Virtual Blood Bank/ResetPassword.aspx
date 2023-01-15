<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Virtual_Blood_Bank.ResetPassword" %>

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
            height: 100vh;
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
            margin: 50px 0px;
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
                    <div class="form-reset">
                        <h2 class="text-white">Forget Password Form</h2>
                        <p class="text-danger small">Please Enter Current and New Password</p>

                        <div>
                            <p class="TextFieldUpperText" >Password <p/>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="Enter Current Password" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your Current Password" ControlToValidate="PasswordTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:regularexpressionvalidator id="Regularexpressionvalidator1" display="Dynamic" Font-Size="Small" ForeColor="#FF3300" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="PasswordTextBox" runat="server"></asp:regularexpressionvalidator>
                         </div>

                        <div>
                            <p class="TextFieldUpperText" >New Password <p/>
                                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Enter New Password" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Enter your Password" ControlToValidate="PasswordTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:regularexpressionvalidator id="PasswordRegularExpressionValidator" display="Dynamic" Font-Size="Small" ForeColor="#FF3300" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="PasswordTextBox" runat="server"></asp:regularexpressionvalidator>
                         </div>
                        <div>
                            <p class="TextFieldUpperText" >Confirm Password <p/>
                                <asp:TextBox ID="CPasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Enter New Password Again" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Password Again" ControlToValidate="CPasswordTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:regularexpressionvalidator id="CPasswordRegularexpressionvalidator" display="Dynamic" Font-Size="Small" ForeColor="#FF3300" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="CPasswordTextBox" runat="server"></asp:regularexpressionvalidator>
                                <asp:CompareValidator ID="CPasswordCompareValidator" runat="server" ErrorMessage="Password Not Match" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ControlToValidate="CPasswordTextBox" ControlToCompare="PasswordTextBox"></asp:CompareValidator>
                           </div>
                        
                        <br />

                        <asp:Button ID="SaveNewPasswordbtn" runat="server" Text="Save" class="btn btn-danger btn-block mt-1 mb-3" OnClick="SaveNewPasswordbtn_Click"/>
                        <asp:Label ID="Label1" runat="server" CssClass="small text-center" ForeColor="Red"></asp:Label>
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

