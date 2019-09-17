﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="web.Formulario_web115" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!DOCTYPE html>
<html>
  <head>
    <title>Homeland &mdash; Colorlib Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Roboto+Mono:300,400,500"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/mediaelementplayer.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/fl-bigmug-line.css">
    
  
    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
<body>
  
  <div class="site-loader"></div>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->

    <div class="site-navbar mt-4">
        <div class="container py-1">
          <div class="row align-items-center">
            <div class="col-8 col-md-8 col-lg-4">
              <h1 class="mb-0"><a href="index.html" class="text-white h2 mb-0"><strong>SaleYa<span class="text-danger">.</span></strong></a></h1>
            </div>
            <div class="col-4 col-md-4 col-lg-8">
              <nav class="site-navigation text-right text-md-right" role="navigation">

                <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                <ul class="site-menu js-clone-nav d-none d-lg-block">
                  <li class="active">
                    <a href="indexRegistrado.aspx">Inicio</a>
                  </li>
                  
                </ul>
              </nav>
            </div>
           

          </div>
        </div>
      </div>
    </div>

    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_bg_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">
          <div class="col-md-10">
            <h1 class="mb-2">Editar Publicacion</h1>
          </div>
        </div>
      </div>
    </div>
    

    <div class="site-section">
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">
          
            
          
            <form runat="server" action="#" class="p-5 bg-white border">

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="fullname" >Nombre</label>
                    <asp:TextBox class="form-control" id="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="EL CAMPO ESTA VACIO" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="email" >Precio</label>
                    <asp:TextBox class="form-control"  id="txtPrecio" runat="server" placeholder="Precio"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrecio" ErrorMessage="EL CAMPO ESTA VACIO" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="email" >Direccion</label>
                     <asp:TextBox name="Direccion" class="form-control"  id="txtDireccion" runat="server" placeholder="Direccion"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDireccion" ErrorMessage="EL CAMPO ESTA VACIO" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="email" >Telefono</label>
                    <asp:TextBox class="form-control"  id="txtTelefono" runat="server" placeholder="Telefono"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTelefono" ErrorMessage="EL CAMPO ESTA VACIO" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>

                <div class="form-group">
                <label class="font-weight-bold" for="email">Tipo</label>
                     <asp:DropDownList class="form-control"  id="cmbTipo" runat="server"></asp:DropDownList>
                </div>

                <div class="form-group">
                <label class="font-weight-bold" for="email">Estado</label>
                    
                    
                     <asp:DropDownList class="form-control"  id="cmbEstado" runat="server">
                        <%-- <asp:ListItem Value="1">Disponible</asp:ListItem>
                      <asp:ListItem Value="2">No Disponible</asp:ListItem>--%>
                     </asp:DropDownList>
              </div>

                <div class="form-group">
                <label class="font-weight-bold" for="email">Ciudad</label>
                      <asp:DropDownList class="form-control"  id="cmbCiudad" runat="server"></asp:DropDownList>
              </div>

                <div class="form-group">
                <label class="font-weight-bold" for="email">Categoria</label>
                     <asp:DropDownList class="form-control"   id="cmbCategoria" runat="server"></asp:DropDownList>
                </div>

              <div class="form-group">
                <label class="font-weight-bold" for="email" >Estrato</label>
                  <asp:DropDownList  class="form-control" ID="cmbEstrato" runat="server">
                      <asp:ListItem Value="uno">1</asp:ListItem>
                      <asp:ListItem Value="dos">2</asp:ListItem>
                      <asp:ListItem Value="tres">3</asp:ListItem>
                      <asp:ListItem Value="cuatro">4</asp:ListItem>
                      <asp:ListItem Value="cinco">5</asp:ListItem>
                      <asp:ListItem Value="seis">6</asp:ListItem>
                  </asp:DropDownList>
                
              </div>

              <div class="form-group">
                <label class="font-weight-bold" for="email"  runat="server">Habitaciones</label>
                  <asp:DropDownList class="form-control" id="cmbHabitacion" runat="server">
                      <asp:ListItem>1</asp:ListItem>
                      <asp:ListItem>2</asp:ListItem>
                      <asp:ListItem>3</asp:ListItem>
                      <asp:ListItem>4</asp:ListItem>
                      <asp:ListItem>5</asp:ListItem>
                      <asp:ListItem>6</asp:ListItem>
                      <asp:ListItem>7</asp:ListItem>
                      <asp:ListItem>8</asp:ListItem>
                      <asp:ListItem>9</asp:ListItem>
                      <asp:ListItem>10</asp:ListItem>
                  </asp:DropDownList>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="font-weight-bold" for="message"  runat="server" >Descripcion Del Inmueble</label> 
                    <asp:TextBox name="Descripcion" id="txtDescripcion" runat="server" cols="30" rows="5" class="form-control" placeholder="Descripcion del inmueble"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="EL CAMPO ESTA VACIO" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                    <asp:Button class="btn btn-primary  py-2 px-4 rounded-0" ID="btnPublicar" runat="server" Text="Editar" OnClick="btnPublicar_Click" />
                </div>
              </div>

  
            </form>
          </div>
        </div>
      </div>
    </div>

    
    

  

     <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="mb-5">
                        <h3 class="footer-heading mb-4">SaleYa</h3>
                        <p>Sofware diseñado para todas las personas o/u inmobiliarias que tienen un inmueble a a venta en venta o arriendo , con SaleYa podras subir ese inmueble para que otra persona que esta interesada en comprar te pueda contactar de una forma facil y segura</p>
                    </div>


                </div>
                
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <h3 class="footer-heading mb-4">Contactanos</h3>
                    <div>
                        <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                        <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                        <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                        <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                    </div>

                </div>

            </div>
            <div class="row pt-5 mt-5 text-center">
                <div class="col-md-12">
                    <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
                        <script>document.write(new Date().getFullYear());</script> Todos los derechos reservados |  <i class="icon-heart text-danger" aria-hidden="true"></i> <a href="https://colorlib.com" target="_blank">SaleYa</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>

            </div>
        </div>
    </footer>


  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/mediaelement-and-player.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/circleaudioplayer.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>

</asp:Content>
