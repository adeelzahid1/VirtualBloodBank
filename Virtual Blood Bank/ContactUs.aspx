<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Virtual_Blood_Bank.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- CONTACT -->
  <section id="contact" class="bg-light py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-9">
          <h3>Get In Touch</h3>
          <p class="lead">If You Have Any Problem or Any Question Please Feel Free To Contact Us. temporibus!</p>
         
            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Please Enter your Name" ControlToValidate="FullNameContactTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
            </div>
            <div class="input-group input-group-lg mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fas fa-user"></i>
                </span>
              </div>
                <asp:TextBox ID="FullNameContactTextBox" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
              <%--<input type="text" class="form-control" placeholder="Name">--%>
            </div>

             <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your Email" ControlToValidate="EmailContactTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
            </div>
            <div class="input-group input-group-lg mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fas fa-envelope"></i>
                </span>
              </div>
              <asp:TextBox ID="EmailContactTextBox" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
            </div>

            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter your City" ControlToValidate="CityContactTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
            </div>
             <div class="input-group input-group-lg mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                 <i class="fas fa-city"></i>
                </span>
              </div>
              <asp:TextBox ID="CityContactTextBox" runat="server" class="form-control" placeholder="City"></asp:TextBox>
            </div>

            <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter your Message" ControlToValidate="MessageContactTextBox" Display="Dynamic" Font-Size="Small" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
            </div>
            <div class="input-group input-group-lg mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text">
                  <i class="fas fa-pencil-alt"></i>
                </span>
              </div>
                <asp:TextBox ID="MessageContactTextBox" runat="server"  class="form-control" placeholder="Message" rows="5" TextMode="MultiLine"></asp:TextBox>
            </div>
   
            <asp:Button ID="ContactSubmitButton" runat="server" Text="Submit" class="btn btn-primary btn-block btn-lg" OnClick="ContactSubmitButton_Click" />
            <asp:Label ID="ContactLabel" runat="server" Text="Label" ForeColor="#FF3300" Font-Size="Small" Visible="False"></asp:Label>
        </div>

        <div class="col-lg-3 align-self-center">
          <img src="img/mlogo.png" alt="" class="img-fluid"/>
        </div>
      </div>
    </div>
  </section>
</asp:Content>
