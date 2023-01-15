<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="AllDonors.aspx.cs" Inherits="Virtual_Blood_Bank.AllDonors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .UserProfileImage{
            width: 80px;
            height: 80px;
            border-radius:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-1 p-1">
       <div class="col-2"> </div>
       <div class="col-8 text-center p-2">
           <span class="text-danger"> FIND YOUR BLOOD DONOR </span>
           <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="dropdown m-1 p-1 text-danger" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
           <asp:Button ID="Button1" runat="server" Text="All Donors" CssClass="ml-3 p-1btn btn-danger p-2" CausesValidation="False" OnClick="Button1_Click"/>

           <br />
           <div class="btn btn-danger m-2">Total Available Donors <span class="badge badge-light"> <asp:Label ID="LabelFoundRecord" runat="server"></asp:Label> </span> </div>
           <asp:Label ID="LabelSaveRecord" runat="server" Visible="False"></asp:Label>
           &nbsp; <asp:Button ID="PrintDonor" runat="server" Text="Print" CssClass="btn btn-sm text-white bg-danger m-1" OnClick="PrintDonor_Click" Visible="False" /><br />
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VirtualBloodBankConnectionString %>" SelectCommand="SELECT [d_firstName], [d_lastName], [d_gender], [d_email], [d_mobile], [d_bloodgroup], [d_BirthYear], [d_image], [d_city], [d_address] FROM [donor_user] where d_isAllow = 'DONOR' order by d_id desc" OnSelected="SqlDataSource1_Selected"></asp:SqlDataSource>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" CssClass="mt-3 p-3">
               <AlternatingRowStyle BackColor="#F7F7F7" />
               <Columns>
                   
                   <asp:TemplateField HeaderText="Image" SortExpression="d_image">
                       <EditItemTemplate>
                           <asp:Image ID="Image4" runat="server" CssClass="UserProfileImage" ImageUrl='<%# Eval("d_image") %>'/>
                       </EditItemTemplate>
                       <ItemTemplate>
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
                   <asp:TemplateField HeaderText="Gender" SortExpression="d_gender">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("d_gender") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label3" runat="server" Text='<%# Bind("d_gender") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Email" SortExpression="d_email">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("d_email") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label4" runat="server" Text='<%# Bind("d_email") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Contact" SortExpression="d_mobile">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("d_mobile") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label5" runat="server" Text='<%# Bind("d_mobile") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:BoundField DataField="d_bloodgroup" HeaderText="Blood Group" SortExpression="d_bloodgroup" />
                   <asp:TemplateField HeaderText="City" SortExpression="d_city">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("d_city") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label6" runat="server" Text='<%# Bind("d_city") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="d_address" SortExpression="d_address" HeaderText="Address" />
                   
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
           
           <asp:Panel ID="Panel1" runat="server" CssClass="mt-3 ml-5">
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:VirtualBloodBankConnectionString %>" SelectCommand="SELECT [d_firstName], [d_lastName], [d_gender], [d_email], [d_mobile], [d_image], [d_address], [d_city] FROM [donor_user] WHERE ([d_bloodgroup] = @d_bloodgroup) and ([d_isAllow] = 'DONOR')" OnSelected="SqlDataSource2_Selected">
               <SelectParameters>
                   <asp:ControlParameter ControlID="DropDownList1" Name="d_bloodgroup" PropertyName="SelectedValue" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
            
               <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Horizontal" AutoGenerateColumns="False" CssClass="m-1 p-1">
                   <AlternatingRowStyle BackColor="#F7F7F7" />
                   <Columns>
                       <asp:TemplateField HeaderText="Image">
                           <EditItemTemplate>
                               <asp:Image ID="Image5" runat="server" CssClass="UserProfileImage" ImageUrl='<%# Eval("d_image") %>'/>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Image ID="Image5" runat="server" CssClass="UserProfileImage" ImageUrl='<%# Eval("d_image") %>'/>
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
                   <asp:TemplateField HeaderText="Gender" SortExpression="d_gender">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("d_gender") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label3" runat="server" Text='<%# Bind("d_gender") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Email" SortExpression="d_email">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("d_email") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label4" runat="server" Text='<%# Bind("d_email") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Contact" SortExpression="d_mobile">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("d_mobile") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Label ID="Label5" runat="server" Text='<%# Bind("d_mobile") %>'></asp:Label>
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
           </asp:Panel>

           <br />
           


       </div>
       <div class="col-2"></div>
   </div>
</asp:Content>
