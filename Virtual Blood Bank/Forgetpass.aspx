<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgetpass.aspx.cs" Inherits="Virtual_Blood_Bank.Forgetpass" %>

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
                    <div class="form-signin">
                        <h2 class="text-white">Forget Password Form</h2>
                        <p class="text-danger small">Please Enter Email and Contact as per Registration</p>
                        <p class="TextFieldUpperText">Email address </p>
                        <asp:TextBox  ID="ResetEmail" class="form-control" placeholder="abc@xyz.com"  runat="server" TextMode="Email"  autofocus="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="ResetEmail" Display="Dynamic" Font-Size="Small" ForeColor="red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email" ControlToValidate="ResetEmail" Display="Dynamic"  Font-Size="Small" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                        <p class="TextFieldUpperText mt-3">Contact Number </p>
                        <asp:TextBox ID="ResetContact" class="form-control" placeholder="Contact " autofocus="true" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Mobile Number" ControlToValidate="ResetContact" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="MobileRegularExpressionValidator" runat="server" ErrorMessage="Please Enter a Valid Mobile Number" ControlToValidate="ResetContact" Display="Dynamic"  Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$"></asp:RegularExpressionValidator>
                        <br />

                       
                        <asp:Button ID="ResetPassbtn" runat="server" Text="Send a Code" class="btn btn-danger btn-block mt-3 mb-3" OnClick="ResetPassbtn_Click"/>
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
