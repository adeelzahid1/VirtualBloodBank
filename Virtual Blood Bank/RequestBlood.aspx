<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="RequestBlood.aspx.cs" Inherits="Virtual_Blood_Bank.RequestBlood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
         .TextFieldUpperText{
            color: Black;
             font-weight: bold;
        }
         .userImg{
             margin-left: 40%;
             border: 1px solid red;
             border-radius: 5px;
         }
    </style>
    <link rel="stylesheet" href="/resources/demos/style.css" />
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
        //jQuery(function () {
        //    jQuery(".WhenRequiredBlooddd").datepicker({
        //        changeMonth: true,
        //        changeYear: true,
        //        //minDate: '-40Y',
        //        //maxDate: '-18Y'
        //        yearRange: '2019:2020'
        //    });
        //});

        $(function () {
            $(".WhenRequiredBlood").datepicker({
                minDate: new Date(),
                onSelect: function (selected) {
                    var dt = new Date(selected);
                    dt.setDate(dt.getDate() + 1);
                    $(".WhenRequiredBlood").datepicker("option", "minDate", dt);
                }
            });
            
        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

     <section class="container bg-light mt-3">
        <div class="row mb-3">
            <div class="col-2"></div>
            <div class="col-8 bg-light text-light p-4">
                <h2 class="text-center text-danger">Request Blood Form</h2>
                <div>
                    <table class="container">
                        
                            <asp:Image ID="Image1" runat="server" CssClass="img-fluid userImg" colspan="2" ImageUrl="~/img/Men-Profile-Image-715x657.png" Width="150px"/>


                        <tr class="row mt-1">
                            <td class="col-6 TextFieldUpperText" >Full Name:<br />
                                <asp:TextBox ID="FullNameTextBox" runat="server" CssClass="form-control" Placeholder="Full Name" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="FullNameRequiredFieldValidator" runat="server" ErrorMessage="Please Enter your Name" ControlToValidate="FullNameTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                            </td>

                            <td class="col-6 TextFieldUpperText" >Email ID<br />
                                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Placeholder="name@example.com" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="EmailTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter a Valid Email" ControlToValidate="EmailTextBox" Display="Dynamic"  Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>


                        <tr class="row pt-3">
                            <td class="col-6 TextFieldUpperText" >Mobile or Phone#<br />
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
                            <td class="col-6 TextFieldUpperText" >When Required<br />
                                <%--   <i class="fas fa-user-tie fa-10x"></i>--%>
                                <asp:TextBox ID="WhenRequiredBloodTextBox" runat="server" Placeholder="day/month/year" CssClass="WhenRequiredBlood form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Required Date" ControlToValidate="WhenRequiredBloodTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                            </td>
                            
                        </tr>

                       

                        <tr class="row">
                           <td class="col-md-1"></td>
                            <td class="col-md-8 mt-3">
                                <asp:Button CssClass="btn btn-danger btn-block" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                <asp:Label ID="submitLabeRequestBlood" runat="server" Font-Size="Small" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                                
                            </td>
                            <td class="col-md-1 mt-3">
                                <asp:Label ID="LabelReqBlood" runat="server" Text="Label" ForeColor="#FF3300" Font-Size="Small" Visible="False"></asp:Label>
                                <%--<asp:Button CssClass="btn btn-primary" ID="ResetButton" runat="server" Text="Reset Fields" CausesValidation="False"  />--%>
                            </td>

                        </tr>

                        

                    </table>

                </div>
            </div>
        </div>
    </section>


</asp:Content>
