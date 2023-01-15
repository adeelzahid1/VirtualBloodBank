<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="AllMembers.aspx.cs" Inherits="Virtual_Blood_Bank.AllMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .UserProfileImage{
            width: 80px;
            height: 80px;
            border-radius: 30%;
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

    <div class="row mt-1 p-1">
       <div class="col-1"> </div>
       <div class="col-10 py-3 text-center">
           <div class="btn btn-danger m-2">Registered Available User & Donors <span class="badge badge-light"> <asp:Label ID="LabelFoundRecord" runat="server"></asp:Label> </span> </div>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                    <asp:TemplateField HeaderText="Image" SortExpression="d_image">
                       <EditItemTemplate>
                           <%--<asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("d_image") %>'></asp:TextBox>--%>
                           <asp:Image ID="Image4" runat="server" CssClass="UserProfileImage" ImageUrl='<%# Eval("d_image") %>'/>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <%--<asp:Label ID="Label7" runat="server" Text='<%# Bind("d_image") %>'></asp:Label>--%>
                           <asp:Image ID="Image4" runat="server" CssClass="UserProfileImage" ImageUrl='<%# Eval("d_image") %>'/>
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Name" SortExpression="d_firstName">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("d_firstName") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label1" runat="server" Text='<%# Bind("d_firstName") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                  
                    <asp:TemplateField SortExpression="d_lastName">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("d_lastName") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label2" runat="server" Text='<%# Bind("d_lastName") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                  
                    <asp:TemplateField HeaderText="E-Mail" SortExpression="d_email">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("d_email") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label3" runat="server" Text='<%# Bind("d_email") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                  
                    <asp:TemplateField HeaderText="Contact" SortExpression="d_mobile">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("d_mobile") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label4" runat="server" Text='<%# Bind("d_mobile") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                  
                    <asp:TemplateField HeaderText="Blood Group" SortExpression="d_bloodgroup">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("d_bloodgroup") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label5" runat="server" Text='<%# Bind("d_bloodgroup") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                 
                     <asp:TemplateField HeaderText="City" SortExpression="d_city">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("d_city") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label6" runat="server" Text='<%# Bind("d_city") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   
                  
                   
                   <asp:TemplateField HeaderText="Gender" SortExpression="d_gender">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("d_gender") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label8" runat="server" Text='<%# Bind("d_gender") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                  
                    <asp:TemplateField HeaderText="Address" SortExpression="d_address">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("d_address") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label9" runat="server" Text='<%# Bind("d_address") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   
               </Columns>
               <EditRowStyle BackColor="#2461BF" />
               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#EFF3FB" />
               <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#F5F7FB" />
               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
               <SortedDescendingCellStyle BackColor="#E9EBEF" />
               <SortedDescendingHeaderStyle BackColor="#4870BE" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VirtualBloodBankConnectionString %>" SelectCommand="SELECT [d_firstName], [d_lastName], [d_email], [d_mobile], [d_bloodgroup], [d_city], [d_image], [d_gender], [d_address] FROM [donor_user] order by d_id desc" OnSelected="SqlDataSource1_Selected"></asp:SqlDataSource>
       </div>
       <div class="col-1"></div>
   </div>


</asp:Content>
