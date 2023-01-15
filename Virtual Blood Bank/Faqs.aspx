<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="Faqs.aspx.cs" Inherits="Virtual_Blood_Bank.Faqs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .AccordionPics{
            width: 90%;
            margin: auto;
            height : 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row mt-1">
       <div class="col-3">
           <img src="img/blood-transfusion_1495185.jpg" class="AccordionPics" />
           <img src="img/Blood%20Bank%20Transfusion%20Medicine.jpg" class="AccordionPics"  />
       </div>


       <div class="col-6">
            <div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h2 class="mb-0">
        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          <h5  class="text-danger"> <i class="fas fa-arrow-circle-down"></i> Beat the Myth</h5>
        </button>
      </h2>
    </div>

    <div id="collapseOne" class="collapse small" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
          Donating blood is safe and simple. It takes approximately 10-15 minutes to complete the blood donation process. Any healthy adult between 18 years and 60 years of age can donate blood. This is what you can expect when you are ready to donate blood: </br>
           </br><ul>
              <li>You walk into a reputed and safe blood donation centre or a mobile camp organized by a reputed institution.</li>
              <li>A few questions will be asked to determine your health status (general questions on health, donation history etc). Usually you will be asked to fill out a short form.</li>
              <li>Then a quick physical check will be done to check temperature, blood pressure, pulse and hemoglobin content in blood to ensure you are a healthy donor.</li>
              <li>If found fit to donate, then you will be asked to lie down on a resting chair or a bed. Your arm will be thoroughly cleaned. Then using sterile equipments blood will be collected in a special plastic bag. Approximately 350 ml of blood will be collected in one donation. Those who weigh more than 60 Kg can donate 450 ml of blood.</li>
              <li>Then you must rest and relax for a few minutes with a light snack and something refreshing to drink. Some snacks and juice will be provided.</li>
              <li>Blood will be separated into components within eight hours of donation</li>
              <li>The blood will then be taken to the laboratory for testing.</li>
              <li>Once found safe, it will be kept in special storage and released when required.</li>
              <li>The blood is now ready to be taken to the hospital, to save lives.</li>
          </ul>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
            <h5 class="text-danger"> <i class="fas fa-arrow-circle-down"></i> Blood Groups</h5>
        </button>
      </h2>
    </div>
    <div id="collapseTwo" class="collapse small" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
        Blood type is determined by which antibodies and antigens the person's blood produces. An individual has two types of blood groups namely ABO-grouping and Rh-grouping. Rh is called as the Rhesus factor that has come to us from Rhesus monkeys. </br> </br>

Most humans are in the ABO blood group. The ABO group has four categories namely 
1) A group 2) B group 3) O group and 4) AB group
In the Rh- group, either the individual is said to be Rh- Negative or Rh- Positive.
Thus blood group of any human being will mainly fall in any one of the following groups.  </br> </br>
A positive or A negative </br>
B positive or B negative  </br>
O positive or O negative  </br>
AB positive or AB negative.
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        <h5 class="text-danger"> <i class="fas fa-arrow-circle-down"></i> Universal Donors and Recipients</h5>
        </button>
      </h2>
    </div>
    <div id="collapseThree" class="collapse small" aria-labelledby="headingThree" data-parent="#accordionExample">
      <div class="card-body">
        The most common blood type is O, followed by type A. </br></br>
Type O individuals are often called "universal donors" since their blood can be transfused into persons with any blood type. Those with type AB blood are called "universal recipients" because they can receive blood of any type. </br></br>
However, since approximately twice as many people in the general population have O and A blood types, a blood bank's need for this type of blood increases exponentially.
      </div>
    </div>
  </div>

<div class="card">
    <div class="card-header" id="headingFour">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed small" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
          <p class="text-danger"><i class="fas fa-arrow-circle-down"></i> DO donate blood, only if you satisfy all of the following conditions </p>
        </button>
      </h2>
    </div>
    <div id="collapseFour" class="collapse  small" aria-labelledby="headingFour" data-parent="#accordionExample">
        <div class="card-body">
            <p><i class="fas fa-check text-success"></i> You are between age group of 18-60 years. </p>
            <p><i class="fas fa-check text-success"></i> Your weight is 45 kgs or more. </p>
            <p><i class="fas fa-check text-success"></i> Your hemoglobin is 12.5 gm% minimum. </p>
            <p><i class="fas fa-check text-success"></i> Your last blood donation was 3 or more months earlier. </p>
            <p><i class="fas fa-check text-success"></i> You are healthy and have not suffered from malaria, typhoid or other transmissible disease in the recent past. </p>

        </div>
    </div>
  </div>



    <div class="card">
    <div class="card-header" id="headingNine">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
          <p class="text-danger"><i class="fas fa-arrow-circle-down"></i> DO NOT donate blood, if you have any of the following conditions</p>
        </button>
      </h2>
    </div>
        <div id="collapseNine" class="collapse small" aria-labelledby="headingNine" data-parent="#accordionExample">
            <div class="card-body">

                <p><i class="fas fa-times text-danger"></i> Cold / fever in the past 1 week.</p>
                <p><i class="fas fa-times text-danger"></i> Under treatment with antibiotics or any other medication.</p>
                <p><i class="fas fa-times text-danger"></i> Cardiac problems, hypertension, epilepsy, diabetes (on insulin therapy), history of cancer, chronic kidney or liver disease, bleeding tendencies, venereal disease etc.</p>
                <p><i class="fas fa-times text-danger"></i> Major surgery in the last 6 months.</p>
                <p><i class="fas fa-times text-danger"></i> Vaccination in the last 24 hours.</p>
                <p><i class="fas fa-times text-danger"></i> Had a miscarriage in the last 6 months or have been pregnant / lactating in the last one year.</p>
                <p><i class="fas fa-times text-danger"></i> Had fainting attacks during last donation.</p>
                <p><i class="fas fa-times text-danger"></i> Have regularly received treatment with blood products.</p>
                <p><i class="fas fa-times text-danger"></i> Shared a needle to inject drugs/ have history of drug addiction.</p>
                <p><i class="fas fa-times text-danger"></i> Had sexual relations with different partners or with a high risk individual.</p>
                <p><i class="fas fa-times text-danger"></i> Been tested positive for antibodies to HIV.</p>
            </div>
        </div>
  </div>




<div class="card">
    <div class="card-header" id="headingFive">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
         <h5 class="text-danger"><i class="fas fa-arrow-circle-down"></i> A Healthy Donor </h5>
        </button>
      </h2>
    </div>
    <div id="collapseFive" class="collapse small" aria-labelledby="headingFive" data-parent="#accordionExample">
      <div class="card-body">
        A healthy diet helps ensure a successful blood donation, and also makes you feel better! Check out the following recommended foods to eat prior to your donation. </br></br>

	>> Low fat foods</br>
	>> Iron rich foods

      </div>
    </div>
  </div>



<div class="card">
    <div class="card-header" id="headingSix">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
          <h5 class="text-danger"><i class="fas fa-arrow-circle-down"></i> Blood Bank</h5>
        </button>
      </h2>
    </div>
    <div id="collapseSix" class="collapse small" aria-labelledby="headingSix" data-parent="#accordionExample">
      <div class="card-body">
        A blood bank is a place designed especially for the storage of blood and blood products. Large coolers hold these products at a constant temperature and they are available at a moment's notice.
      </div>
    </div>
  </div>



<div class="card">
    <div class="card-header" id="headingSeven">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
          <h5 class="text-danger">  <i class="fas fa-arrow-circle-down"></i> About Blood Donation</h5>
        </button>
      </h2>
    </div>
    <div id="collapseSeven" class="collapse small" aria-labelledby="headingSeven" data-parent="#accordionExample">
      <div class="card-body">
       Donating blood is a life saving measure especially when you have a rare blood type.	Blood donation is safe and simple. It takes only about 10 minutes to donate blood - less than the time of an average telephone call. We can save upto 3 to 4 precious lives by donating blood.
      </div>
    </div>
  </div>

<div class="card">
    <div class="card-header" id="headingEight">
      <h2 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseEight" aria-expanded="true" aria-controls="collapseEight">
          <h5 class="text-danger"> <i class="fas fa-arrow-circle-down"></i>  World Blood Donor Day</h5>
        </button>
      </h2>
    </div>
    <div id="collapseEight" class="collapse small" aria-labelledby="headingEight" data-parent="#accordionExample">
      <div class="card-body">
       The day is celebrated to raise awareness globally about the need for regular and voluntary blood donation.
      </div>
    </div>
  </div>






</div>
       </div>
       <div class="col-3">
           <img src="img/blood-drive-22x.png" class="AccordionPics" />
           <img src="img/1297089-blood-donation.png" class="AccordionPics" />
       </div>

   </div>
</asp:Content>
