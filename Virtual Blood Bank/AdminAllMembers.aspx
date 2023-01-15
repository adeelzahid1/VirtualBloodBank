<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="AdminAllMembers.aspx.cs" Inherits="Virtual_Blood_Bank.AdminAllMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .UserDonorGrid{
            overflow: scroll;
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
            <li><a href="AdminBloodPortal.aspx">Admin Blood Portal</a></li>
            <li><a href="AdminAllMembers.aspx">Admin All Members</a></li>
            <li><a href="AdminAllRequiredBlood.aspx">Blood Request Portal</a></li>
            <li><a href="AvailableBloodQuantity.aspx">Print Available Blood</a></li>
            <li><a href="InOutBloodRecord.aspx">Report Blood In Out</a></li>
            <li><a href="AllDonorsRecord.aspx">Report All Donors</a></li>
        </ul>
        <button class="sideBtn bg-dark">
            <span class="text-white"></span>
        </button>
    </div>
   
    <%--End Side Bar Menu--%>


    <div class="row mt-1 p-1">
        <div class="col-12 UserDonorGrid text-center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="d_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="d_id" HeaderText="d_id" InsertVisible="False" ReadOnly="True" SortExpression="d_id" />
                <asp:BoundField DataField="d_firstName" HeaderText="d_firstName" SortExpression="d_firstName" />
                <asp:BoundField DataField="d_lastName" HeaderText="d_lastName" SortExpression="d_lastName" />
                <asp:BoundField DataField="d_gender" HeaderText="d_gender" SortExpression="d_gender" />
                <asp:BoundField DataField="d_email" HeaderText="d_email" SortExpression="d_email" />
                <asp:BoundField DataField="d_mobile" HeaderText="d_mobile" SortExpression="d_mobile" />
                <asp:BoundField DataField="d_bloodgroup" HeaderText="d_bloodgroup" SortExpression="d_bloodgroup" />
                <asp:BoundField DataField="d_BirthYear" HeaderText="d_BirthYear" SortExpression="d_BirthYear" />
                <asp:BoundField DataField="d_weight" HeaderText="d_weight" SortExpression="d_weight" />
                <asp:BoundField DataField="d_cnic" HeaderText="d_cnic" SortExpression="d_cnic" />
                <asp:BoundField DataField="d_hospital" HeaderText="d_hospital" SortExpression="d_hospital" />
                <asp:BoundField DataField="d_city" HeaderText="d_city" SortExpression="d_city" />
                <asp:BoundField DataField="d_address" HeaderText="d_address" SortExpression="d_address" />
                <asp:BoundField DataField="d_regdate" HeaderText="d_regdate" SortExpression="d_regdate" />
                <asp:BoundField DataField="d_isAllow" HeaderText="d_isAllow" SortExpression="d_isAllow" />
                <asp:BoundField DataField="d_dtLastDonate" HeaderText="d_dtLastDonate" SortExpression="d_dtLastDonate" />
                <asp:BoundField DataField="d_image" HeaderText="d_image" SortExpression="d_image" />
                <asp:BoundField DataField="d_password" HeaderText="d_password" SortExpression="d_password" />
                <asp:BoundField DataField="roleidBloodBank" HeaderText="roleidBloodBank" SortExpression="roleidBloodBank" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VirtualBloodBankConnectionString %>" DeleteCommand="DELETE FROM [donor_user] WHERE [d_id] = @d_id" InsertCommand="INSERT INTO [donor_user] ([d_firstName], [d_lastName], [d_gender], [d_email], [d_mobile], [d_bloodgroup], [d_BirthYear], [d_weight], [d_cnic], [d_hospital], [d_city], [d_address], [d_regdate], [d_isAllow], [d_dtLastDonate], [d_image], [d_password], [roleidBloodBank]) VALUES (@d_firstName, @d_lastName, @d_gender, @d_email, @d_mobile, @d_bloodgroup, @d_BirthYear, @d_weight, @d_cnic, @d_hospital, @d_city, @d_address, @d_regdate, @d_isAllow, @d_dtLastDonate, @d_image, @d_password, @roleidBloodBank)" SelectCommand="SELECT * FROM [donor_user]" UpdateCommand="UPDATE [donor_user] SET [d_firstName] = @d_firstName, [d_lastName] = @d_lastName, [d_gender] = @d_gender, [d_email] = @d_email, [d_mobile] = @d_mobile, [d_bloodgroup] = @d_bloodgroup, [d_BirthYear] = @d_BirthYear, [d_weight] = @d_weight, [d_cnic] = @d_cnic, [d_hospital] = @d_hospital, [d_city] = @d_city, [d_address] = @d_address, [d_regdate] = @d_regdate, [d_isAllow] = @d_isAllow, [d_dtLastDonate] = @d_dtLastDonate, [d_image] = @d_image, [d_password] = @d_password, [roleidBloodBank] = @roleidBloodBank WHERE [d_id] = @d_id">
            <DeleteParameters>
                <asp:Parameter Name="d_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="d_firstName" Type="String" />
                <asp:Parameter Name="d_lastName" Type="String" />
                <asp:Parameter Name="d_gender" Type="String" />
                <asp:Parameter Name="d_email" Type="String" />
                <asp:Parameter Name="d_mobile" Type="String" />
                <asp:Parameter Name="d_bloodgroup" Type="String" />
                <asp:Parameter Name="d_BirthYear" Type="DateTime" />
                <asp:Parameter Name="d_weight" Type="String" />
                <asp:Parameter Name="d_cnic" Type="String" />
                <asp:Parameter Name="d_hospital" Type="Int32" />
                <asp:Parameter Name="d_city" Type="String" />
                <asp:Parameter Name="d_address" Type="String" />
                <asp:Parameter Name="d_regdate" Type="DateTime" />
                <asp:Parameter Name="d_isAllow" Type="String" />
                <asp:Parameter Name="d_dtLastDonate" Type="DateTime" />
                <asp:Parameter Name="d_image" Type="String" />
                <asp:Parameter Name="d_password" Type="String" />
                <asp:Parameter Name="roleidBloodBank" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="d_firstName" Type="String" />
                <asp:Parameter Name="d_lastName" Type="String" />
                <asp:Parameter Name="d_gender" Type="String" />
                <asp:Parameter Name="d_email" Type="String" />
                <asp:Parameter Name="d_mobile" Type="String" />
                <asp:Parameter Name="d_bloodgroup" Type="String" />
                <asp:Parameter Name="d_BirthYear" Type="DateTime" />
                <asp:Parameter Name="d_weight" Type="String" />
                <asp:Parameter Name="d_cnic" Type="String" />
                <asp:Parameter Name="d_hospital" Type="Int32" />
                <asp:Parameter Name="d_city" Type="String" />
                <asp:Parameter Name="d_address" Type="String" />
                <asp:Parameter Name="d_regdate" Type="DateTime" />
                <asp:Parameter Name="d_isAllow" Type="String" />
                <asp:Parameter Name="d_dtLastDonate" Type="DateTime" />
                <asp:Parameter Name="d_image" Type="String" />
                <asp:Parameter Name="d_password" Type="String" />
                <asp:Parameter Name="roleidBloodBank" Type="Int32" />
                <asp:Parameter Name="d_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
