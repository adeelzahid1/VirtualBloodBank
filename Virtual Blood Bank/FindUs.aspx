<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="FindUs.aspx.cs" Inherits="Virtual_Blood_Bank.FindUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        iframe{
            width: 99%;
            height: 450px;
            margin: 5px;
            border: 5px solid red;
            border-radius: 5px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-8">
            <div class="mt-3 mb-3 bg-light img-fluid">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.7352574583642!2d73.07876911462911!3d31.448954557812673!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39224290e8142e7b%3A0x7cdf873f650cb9cf!2sAllied+Hospital+Faisalabad!5e0!3m2!1sen!2s!4v1562199614858!5m2!1sen!2s"></iframe>
            </div>
        </div>
        <div class="col-3 mt-3 text-danger"> 
            <h5 class="mt-3"> Locate us</h5>
            <p> <span><i class="fas fa-map-marker-alt"></i> </span> Dr. Tusi Rd, Faisalabad, Punjab, Pakistan </p>
            <p> <span><i class="fas fa-mobile-alt"></i> </span> +92 41 9210095 </p>
            <p> <span><i class="fas fa-compass"></i> </span> C3XJ+H9 Faisalabad, Pakistan</p>
            <p> <span><i class="fas fa-history"></i>  </span> Open 24 Hours</p>
        </div>
    </div>
</asp:Content>
