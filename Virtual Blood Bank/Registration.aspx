<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Virtual_Blood_Bank.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/custome.css" />
    
    
    <style type="text/css">
        .UserProfilePic{
            width: 60px;
            height: 50px;
            border-radius: 30%;
        }
        .LabelUserName{
            position: absolute;
            top: 10px;
            left: 72%;
            font-weight: bold;

        }
        .TextFieldUpperText{
            color: Black;
             font-weight: bold;
        }
        .profileImg{
            border: 1px solid red;
            border-radius: 10%;
            width: 100%;
            height: 200px;
            background-color: rgba(128, 128, 128, 0.5);
        }
        .gotologin{
            font-size: 15px;
            color: greenyellow;
        }
        .gotologin:hover{
            color: greenyellow;
            letter-spacing: 1px;
        }
        .myImg{
            width: 100%;
            border-radius: 10%;
        }
    </style>
    <link rel="stylesheet" href="/resources/demos/style.css" />
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        //var todayDate = Date.now();
        //alert("Hello JS");
        //$(document).ready(function () {
        //    if (jQuery) {
        //        // jQuery is loaded  
        //        alert("Yeah!");
        //    } else {
        //        // jQuery is not loaded
        //        alert("Doesn't Work");
        //    }
        //});

       

       

        jQuery(function () {
            jQuery(".datepicker").datepicker({
                changeMonth: true,
                changeYear: true,
                //minDate: '-40Y',
                //maxDate: '-18Y'
                yearRange: '1980:2001'
            });
        });
        jQuery(function () {
            jQuery(".datepickerblooddonate").datepicker({
                changeMonth: true,
                changeYear: true,
                //minDate: '-40Y',
                //maxDate: '-18Y'
                yearRange: '2000:2019'
            });
        });
        //Image Upload Query
        $(function () {
            $(".file-upload").change(function () {
                if (this.files && this.files[0]) {
                    var reader = new FileReader();
                    reader.onload = imageIsLoaded;
                    reader.readAsDataURL(this.files[0]);
                }
            });
        });

        function imageIsLoaded(e) {
            $('.myImg').attr('src', e.target.result);
        };
    </script>

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
                            <%--<a href="#" ><asp:Image ID="Image1" runat="server" class="UserProfilePic"/></a>--%>
                            <%--<asp:Button ID="LogOutButton" runat="server" Text="Log Out" CssClass="btn btn-sm btn-danger" CausesValidation="False" />--%>
                        </ul>
                    </nav>
                </section>
                <%--<asp:Label ID="LabelUserName" runat="server" CssClass="LabelUserName" Visible="True"></asp:Label>--%>
            </div>

        </div>

        <%--End Navigation Bar Code--%>

           <%--Start Code for Registration Form--%>

        <section class="container bg-light mt-3">
        <div class="row mb-2">
            <div class="col-8 bg-light text-light p-4">
                <h2 class="text-center text-danger">Registration Form</h2>
                <div>
                    <table class="container">

                        <tr class="row mt-1">
                            <td class="col-6 TextFieldUpperText" >First Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" Placeholder="First Name" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="FirstNameRequiredFieldValidator" runat="server" ErrorMessage="Please Enter your Name" ControlToValidate="FirstNameTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                            </td>

                            <td class="col-6 TextFieldUpperText" >Last Name<br />
                                <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="form-control" Placeholder="Last Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="LastNameRequiredFieldValidator" runat="server" ErrorMessage="Please Enter Last Name" ControlToValidate="LastNameTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                         <tr class="row pt-3">
                            <td class="col-6 TextFieldUpperText" >Gender<br />
                                <asp:DropDownList ID="GenderDropDownList" runat="server" CssClass="form-control">
                                    <asp:ListItem >Select Gender</asp:ListItem>
                                    <asp:ListItem> Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="GenderRequiredFieldValidator" runat="server" ErrorMessage="Please Select a Gender" Display="Dynamic"  Font-Size="Small" ForeColor="#FF3300" ControlToValidate="GenderDropDownList" InitialValue="Select Gender" ></asp:RequiredFieldValidator>
                            </td>

                            <td class="col-6 TextFieldUpperText" >Email ID<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Placeholder="name@example.com" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="EmailTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email" ControlToValidate="EmailTextBox" Display="Dynamic"  Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>

                        <tr class="row pt-3">
                            <td class="col-6 TextFieldUpperText" >Mobile #<br />
                                <asp:TextBox ID="MobileTextBox" runat="server" CssClass="form-control" Placeholder="1234-1234567"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Mobile Number" ControlToValidate="MobileTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="MobileRegularExpressionValidator" runat="server" ErrorMessage="Please Enter a Valid Mobile Number" ControlToValidate="MobileTextBox" Display="Dynamic"  Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^((\+92)|(0092))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}$"></asp:RegularExpressionValidator>
                            </td>

                            <td class="col-6 TextFieldUpperText">Blood Group<br />
                                <asp:DropDownList ID="BloodDropDownList" runat="server" CssClass="form-control text-center">
                                    <asp:ListItem Value="0">Blood Group</asp:ListItem>
                                    <asp:ListItem>A+</asp:ListItem>
                                    <asp:ListItem>A-</asp:ListItem>
                                    <asp:ListItem>B+</asp:ListItem>
                                    <asp:ListItem>B-</asp:ListItem>
                                    <asp:ListItem>AB+</asp:ListItem>
                                    <asp:ListItem>AB-</asp:ListItem>
                                    <asp:ListItem>O+</asp:ListItem>
                                    <asp:ListItem>O-</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="BloodRequiredFieldValidator" runat="server" ErrorMessage="Please Select a Blood Group" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ControlToValidate="BloodDropDownList" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr class="row pt-3"> 
                            <td class="col-6 TextFieldUpperText" >Date of Birth<br />
                                <%--   <i class="fas fa-user-tie fa-10x"></i>--%>
                                <asp:TextBox ID="AgeTextBox" runat="server" Placeholder="day/month/year" CssClass="datepicker form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AgeRequiredFieldValidator" runat="server" ErrorMessage="Please Enter your Date of Birth" ControlToValidate="AgeTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                            </td>

                            <td class="col-6 TextFieldUpperText" >Weight<br />
                                <asp:DropDownList ID="WeightDropDownList" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0">What's Your Weight (KG)</asp:ListItem> 
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="WeightRequiredFieldValidator" runat="server" ErrorMessage="Must Select a Value" Display="Dynamic"  Font-Size="Small" ForeColor="#FF3300" ControlToValidate="WeightDropDownList" InitialValue="0" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr class="row pt-3">
                            <td class="col-6 TextFieldUpperText" >N.I.C.#<br />
                                <asp:TextBox ID="NICTextBox" runat="server" CssClass="form-control" Placeholder="12345-1234567-1" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter N.I.C. Number" ControlToValidate="NICTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter a Valid N.I.C. Number" ControlToValidate="NICTextBox" Display="Dynamic"  Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$"></asp:RegularExpressionValidator>
                            </td>

                            <td class="col-6 TextFieldUpperText" >Near Hospital<br />
                                <asp:DropDownList ID="HospDropDownList" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceBloodBank" DataTextField="hos_name" DataValueField="hos_id">
                                    <asp:ListItem Value="0">Select A laboratory or Hospital</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceBloodBank" runat="server" ConnectionString="<%$ ConnectionStrings:VirtualBloodBankConnectionString %>" SelectCommand="SELECT * FROM [Hospitals]"></asp:SqlDataSource>
                                <%--asflkjas lfkjaslkfjaslk f
                            asdfasfsfalksjdflsa
                            sdfklsaklfjasl;kf--%>
                            </td>
                        </tr>

                        <tr class="row pt-3">
                            <td class="col-6 TextFieldUpperText">City<br />
                                <asp:DropDownList ID="CityDropDownList" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="0">Select a City</asp:ListItem>
                                    <asp:ListItem>Islam Abad</asp:ListItem>
                                    <asp:ListItem>Faisal Abad</asp:ListItem>
                                    <asp:ListItem>Lahore</asp:ListItem>
                                    <asp:ListItem>Karachi</asp:ListItem>
                                    <asp:ListItem>Multan</asp:ListItem>
                                    <asp:ListItem>Peshawar</asp:ListItem>
                                    <asp:ListItem>Quetta</asp:ListItem>
                                    <asp:ListItem>Mansoor Abad</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ErrorMessage="Please Select a City" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ControlToValidate="CityDropDownList" InitialValue="0"></asp:RequiredFieldValidator>
                            </td>

                            <td class="col-6 TextFieldUpperText">Address<br />
                                <asp:TextBox ID="AddressTextBox" runat="server" CssClass="form-control" Placeholder="Enter Your Exist Address"  TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your Address" ControlToValidate="AddressTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr class="row pt-3">
                            <td  class="col-6 TextFieldUpperText">Allow Donation<br />
                                
                                <label for="DonationCheckBox" class="btn btn-success">Allow Donation Blood <asp:CheckBox ID="DonationCheckBox" Checked="true" runat="server" class="badgebox"/> <span class="badge"></span></label>
                            </td>
                            <td class="col-6 TextFieldUpperText" >Last Donation Date<br />
                                <%--   <i class="fas fa-user-tie fa-10x"></i>--%>
                                <asp:TextBox ID="LastDonateTextBox" runat="server" Placeholder="day/month/year" CssClass="datepickerblooddonate form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter your Date of Birth" ControlToValidate="AgeTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                            </td>
                            <%--asflkjas lfkjaslkfjaslk f
                            asdfasfsfalksjdflsa
                            sdfklsaklfjasl;kf--%>
                        </tr>

                        <tr class="row pt-3">
                            <td class="col-6 TextFieldUpperText" >Password<br />
                                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Enter Password" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" ErrorMessage="Enter your Password" ControlToValidate="PasswordTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:regularexpressionvalidator id="PasswordRegularExpressionValidator" display="Dynamic" Font-Size="Small" ForeColor="#FF3300" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="PasswordTextBox" runat="server"></asp:regularexpressionvalidator>
                            </td>

                            <td class="col-6 TextFieldUpperText" >Confirm Password<br />
                                <asp:TextBox ID="CPasswordTextBox" runat="server" TextMode="Password" CssClass="form-control" Placeholder="Enter Password Again" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Password Again" ControlToValidate="CPasswordTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:regularexpressionvalidator id="CPasswordRegularexpressionvalidator" display="Dynamic" Font-Size="Small" ForeColor="#FF3300" errormessage="Password must be 8-10 characters long</br> with at least one numeric character." validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="CPasswordTextBox" runat="server"></asp:regularexpressionvalidator>
                                <asp:CompareValidator ID="CPasswordCompareValidator" runat="server" ErrorMessage="Password Not Match" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ControlToValidate="CPasswordTextBox" ControlToCompare="PasswordTextBox"></asp:CompareValidator>
                            </td>
                        </tr>

                        <tr class="row">
                           <td class="col-md-1"></td>
                            <td class="col-md-8 mt-3">
                                <asp:Button CssClass="btn btn-danger btn-block" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                <asp:Label ID="submitLabel" runat="server" Font-Size="Small" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                                <p class="mt-4 text-primary text-center bg-dark p-2">Already Registered <a href="signin.aspx" class="gotologin">Log In Here</a></p>
                            </td>
                            <td class="col-md-1 mt-3">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <asp:Button CssClass="btn btn-primary" ID="ResetButton" runat="server" Text="Reset Fields" CausesValidation="False" OnClick="ResetButton_Click" /></td>

                        </tr>

                        

                    </table>

                </div>

               </div>
           

            <div class="col-4 mt-5">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8 profileImg">
                     <%--   <i class="fas fa-user-tie fa-10x"></i>--%>
                        <asp:Image ID="ImageProfile" runat="server" CssClass="myImg"  ImageUrl="~/img/Men-Profile-Image-715x657.png" Height="200px" />
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-2"></div>
                    <div class="col-10"><asp:FileUpload ID="ImageFileUpload" runat="server" CssClass="file-upload" />
                        <br />
                        <asp:RegularExpressionValidator Display="Dynamic" ID="ImageRegularExpressionValidator" runat="server" ErrorMessage="Image must be JPG or PNG or JPEG" ControlToValidate="ImageFileUpload" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="(.*png$)|(.*jpg$)|(.*jpeg$)"></asp:RegularExpressionValidator>
                        <br />
                        <asp:Label ID="LabelImg" Display="Dynamic" runat="server" Text="Label" Visible="False" Font-Size="Small" ForeColor="#FF3300" ></asp:Label>
                    </div>
                </div>
                <div class="row pt-5">
                    <img src="img/RegAdver.jpg" class="img-fluid" style="width: 100%; height:500px;" alt="RegAdverImg" />
                </div>
            </div>

        </div>
    </section>


           <%--End Code for Registration Form--%>
    </div>
    </form>
</body>
</html>
