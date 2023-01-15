<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="AdminBloodPortal.aspx.cs" Inherits="Virtual_Blood_Bank.AdminBloodPortal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
        
    <style>
        .LabelUserName{
            position: absolute;
            top: 75px;
            right: 40%;
            font-weight: bold;
            color: red;

        }
        .TextFieldUpperText{
            color: Black;
             font-weight: bold;
             font-size: small;
        }
        #bloodquantity table{
            border: 1px solid #fff;
        }
        #bloodquantity table tr{
            border: 1px solid #fff;
        }
    </style>
    
    <link rel="stylesheet" href="css/sidebar.css" />
    
    <script type="text/javascript" src="jquery.js">
		$(document).ready(function(){
			$('sideBtn').click(function(){
				$('.sidebar').toggleClass('active')
			})
		})
	</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%--Start Side bar Menu--%>

    <div class="sidebar bg-dark">
        <ul>
            <li><a href="AdminBloodPortal.aspx">Blood Portal</a></li>
            <li><a href="AdminAllMembers.aspx">All Members</a></li>
            <li><a href="AdminAllRequiredBlood.aspx">Blood Request Portal</a></li>
            <li><a href="AllMembers.aspx">All Registered Members</a></li>
            <li><a href="AvailableBloodQuantity.aspx">Print Available Blood</a></li>
            <li><a href="InOutBloodRecord.aspx">Report Blood In Out</a></li>
            <li><a href="AllDonorsRecord.aspx">Report All Donors</a></li>
        </ul>
        <button class="sideBtn bg-dark">
            <span class="text-white"></span>
        </button>
    </div>
   
    <%--End Side Bar Menu--%>

    <section class="container bg-light mt-3">
        <div class="row mb-2">
            <div class="col-1"></div>
            <div class="col-5 bg-light text-light p-4">
                <h3 class="text-center text-danger">Blood Portal</h3>
                <div>
                    <table class="container">
                        <tr class="row mt-1">
                            <td class="col-6 TextFieldUpperText" >Full Name:<br />
                                <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" Placeholder="First Name" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="FirstNameRequiredFieldValidator" runat="server" ErrorMessage="Please Enter your Name" ControlToValidate="FirstNameTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
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
                            <td class="col-6 TextFieldUpperText" >Contact<br />
                                <asp:TextBox ID="MobileTextBox" runat="server" CssClass="form-control" Placeholder="Email or Phone NO"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Contact" ControlToValidate="MobileTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                            </td>

                            <td class="col-6 TextFieldUpperText">Blood Group<br />
                                <asp:DropDownList ID="BloodDropDownList" runat="server"  CssClass="form-control" DataSourceID="SqlDataSourceBlood" DataTextField="varBloodGroup" DataValueField="intID"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceBlood" runat="server" ConnectionString="<%$ ConnectionStrings:VirtualBloodBankConnectionString %>" SelectCommand="SELECT * FROM [BloodGroups]"></asp:SqlDataSource>
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
                            <td class="col-6 TextFieldUpperText">Quantity<br />
                                <asp:TextBox ID="QuantityTextBox" runat="server" CssClass="form-control" Placeholder="Enter Quantity"  TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Quantity" ControlToValidate="QuantityTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr class="row pt-3">
                             <td class="col-4"><br /><asp:button runat="server" text="Blood Collect" cssclass="btn btn-block btn-success" ID="BloodInBtn" OnClick="BloodInBtn_Click"/> </td>
                             <td class="col-4"><br /><asp:button runat="server" text="Blood Out"  cssclass="btn btn-block btn-danger" ID="BloodOutBtn" OnClick="BloodOutBtn_Click"/> </td>
                             <td class="col-4"><br /><asp:button runat="server" text="Print Record" ID="PrintBtn" OnClick="PrintBtn_Click" CausesValidation="False" /></td>  
                             
                        </tr>
                        <asp:Label ID="BloodStockLabel" runat="server" Visible="False"></asp:Label>
                        </table>
                       </div>
                    </div>
            
            <div id="bloodquantity" class="col-5 bg-danger text-light p-4 text-center">
                <h5> Available Blood Stock <span><a class="ml-2 text-success" href="AvailableBloodQuantity.aspx">Print</a></span>  </h5>
                
                <asp:GridView ID="GridViewAvailAbleStock" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceAvailableStock" ForeColor="#333333" GridLines="None" Height="301px" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="varBloodGroup" HeaderText="Blood Group" SortExpression="varBloodGroup" />
                        <asp:BoundField DataField="Result" HeaderText="Available Quantity" ReadOnly="True" SortExpression="Result" />
                        
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceAvailableStock" runat="server" ConnectionString="<%$ ConnectionStrings:VirtualBloodBankConnectionString %>" SelectCommand="SELECT bloodgroups.varBloodGroup, Sum([bs_in] - [bs_out]) as Result  FROM [VirtualBloodBank].[dbo].[BloodStock] inner join bloodgroups on BloodStock.bs_bloodType = bloodgroups.intID GROUP BY bloodGroups.intID,bloodgroups.varBloodGroup Order by varBloodGroup
"></asp:SqlDataSource>
            
                </div>
            </div>
            </section>
</asp:Content>
