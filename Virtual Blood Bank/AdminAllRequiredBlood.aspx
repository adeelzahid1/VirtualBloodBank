<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="AdminAllRequiredBlood.aspx.cs" Inherits="Virtual_Blood_Bank.AdminAllRequiredBlood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

     <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
         <Columns>
             <asp:TemplateField ShowHeader="False">
                 <EditItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                     &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
         <FooterStyle BackColor="White" ForeColor="#000066" />
         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
         <RowStyle ForeColor="#000066" />
         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#007DBB" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#00547E" />
     </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VirtualBloodBankConnectionString %>" DeleteCommand="DELETE FROM [RequestBlood] WHERE [r_id] = @r_id" InsertCommand="INSERT INTO [RequestBlood] ([r_name], [r_email], [r_mobile], [r_addres], [r_city], [r_blood], [r_img], [r_requireDate], [r_requestDate], [r_userAC]) VALUES (@r_name, @r_email, @r_mobile, @r_addres, @r_city, @r_blood, @r_img, @r_requireDate, @r_requestDate, @r_userAC)" SelectCommand="SELECT * FROM [RequestBlood] ORDER BY [r_requestDate] DESC" UpdateCommand="UPDATE [RequestBlood] SET [r_name] = @r_name, [r_email] = @r_email, [r_mobile] = @r_mobile, [r_addres] = @r_addres, [r_city] = @r_city, [r_blood] = @r_blood, [r_img] = @r_img, [r_requireDate] = @r_requireDate, [r_requestDate] = @r_requestDate, [r_userAC] = @r_userAC WHERE [r_id] = @r_id">
        <DeleteParameters>
            <asp:Parameter Name="r_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="r_name" Type="String" />
            <asp:Parameter Name="r_email" Type="String" />
            <asp:Parameter Name="r_mobile" Type="String" />
            <asp:Parameter Name="r_addres" Type="String" />
            <asp:Parameter Name="r_city" Type="String" />
            <asp:Parameter Name="r_blood" Type="String" />
            <asp:Parameter Name="r_img" Type="String" />
            <asp:Parameter Name="r_requireDate" Type="DateTime" />
            <asp:Parameter Name="r_requestDate" Type="DateTime" />
            <asp:Parameter Name="r_userAC" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="r_name" Type="String" />
            <asp:Parameter Name="r_email" Type="String" />
            <asp:Parameter Name="r_mobile" Type="String" />
            <asp:Parameter Name="r_addres" Type="String" />
            <asp:Parameter Name="r_city" Type="String" />
            <asp:Parameter Name="r_blood" Type="String" />
            <asp:Parameter Name="r_img" Type="String" />
            <asp:Parameter Name="r_requireDate" Type="DateTime" />
            <asp:Parameter Name="r_requestDate" Type="DateTime" />
            <asp:Parameter Name="r_userAC" Type="String" />
            <asp:Parameter Name="r_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
