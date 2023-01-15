<%@ Page Title="" Language="C#" MasterPageFile="~/MasterBloodBank.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Virtual_Blood_Bank.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .CarouselHeight {
            height: 500px;
        }

        #authors img {
            margin-top: -50px;
        }

        #authors .card:hover {
            background: #3292a6;
            color: #fff;
        }

        #authors .fab {
            color: #fff;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Start Carousel--%>
    <div id="carouselExampleIndicators" class="carousel slide mt-1" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100 CarouselHeight"  src="img/25.jpg" alt="First slide"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 CarouselHeight" src="img/blood-donation.jpg" alt="Second slide"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 CarouselHeight"  src="img/blood1-1200x548.jpg" alt="Third slide"/>
    </div>
      <div class="carousel-item">
      <img class="d-block w-100 CarouselHeight"  src="img/images.png" alt="Forth slide"/>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <%--End Carousel--%>

    <!-- AUTHORS -->
  <section id="authors" class="my-5 text-center">
    <div class="container">
      <div class="row">
        <div class="col">
          <div class="info-header mb-5">
            <h1 class="text-danger pb-3">
              Meet Our Donors
            </h1>
            <p class="lead">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias laborum numquam aperiam dolores a porro!
            </p>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-3 col-md-6">
          <div class="card">
            <div class="card-body">
              <img src="img/person1.jpg" alt="" class="img-fluid rounded-circle w-50 mb-3"/>
              <h3>Umair Hashim</h3>
              <h5 class="text-muted">Business Man</h5>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed commodi nostrum, ab libero voluptas officia.</p>
              <div class="d-flex justify-content-center">
                <div class="p-4">
                  <a href="http://facebook.com">
                    <i class="fab fa-facebook"></i>
                     
                  </a>
                </div>
                <div class="p-4">
                  <a href="http://twitter.com">
                    <i class="fab fa-twitter"></i>
                  </a>
                </div>
                <div class="p-4">
                  <a href="http://instagram.com">
                    <i class="fab fa-instagram"></i>
                  </a>
                </div>

              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="card">
            <div class="card-body">
              <img src="img/person2.jpg" alt="" class="img-fluid rounded-circle w-50 mb-3"/>
              <h3>Mudssar Ali</h3>
              <h5 class="text-muted">Teacher</h5>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed commodi nostrum, ab libero voluptas officia.</p>
              <div class="d-flex justify-content-center">
                <div class="p-4">
                  <a href="http://facebook.com">
                    <i class="fab fa-facebook"></i>
                  </a>
                </div>
                <div class="p-4">
                  <a href="http://twitter.com">
                    <i class="fab fa-twitter"></i>
                  </a>
                </div>
                <div class="p-4">
                  <a href="http://instagram.com">
                    <i class="fab fa-instagram"></i>
                  </a>
                </div>

              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="card">
            <div class="card-body">
              <img src="img/person3.jpg" alt="" class="img-fluid rounded-circle w-50 mb-3"/>
              <h3>Hamza Ali</h3>
              <h5 class="text-muted">Actor</h5>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed commodi nostrum, ab libero voluptas officia.</p>
              <div class="d-flex justify-content-center">
                <div class="p-4">
                  <a href="http://facebook.com">
                    <i class="fab fa-facebook"></i>
                  </a>
                </div>
                <div class="p-4">
                  <a href="http://twitter.com">
                    <i class="fab fa-twitter"></i>
                  </a>
                </div>
                <div class="p-4">
                  <a href="http://instagram.com">
                    <i class="fab fa-instagram"></i>
                  </a>
                </div>

              </div>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6">
          <div class="card">
            <div class="card-body">
              <img src="img/person4.jpg" alt="" class="img-fluid rounded-circle w-50 mb-3"/>
              <h3>Kevin Swanson</h3>
              <h5 class="text-muted">Designer</h5>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed commodi nostrum, ab libero voluptas officia.</p>
              <div class="d-flex justify-content-center">
                <div class="p-4">
                  <a href="http://facebook.com">
                    <i class="fab fa-facebook"></i>
                  </a>
                </div>
                <div class="p-4">
                  <a href="http://twitter.com">
                    <i class="fab fa-twitter"></i>
                  </a>
                </div>
                <div class="p-4">
                  <a href="http://instagram.com">
                    <i class="fab fa-instagram"></i>
                  </a>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

 

    <%--End Authors--%>
</asp:Content>
