<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CryptoNews</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid d-none d-lg-block">
        <div class="row align-items-center bg-dark px-lg-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-n2">
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="#">
                            <%
out.println(new Date());
                            %>
                            </a>
                        </li>
                     
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="contact.jsp">Contactez-Nous</a>
                        </li>
                        
	                    <% 
	                    if(session.getAttribute("agent") == null){ 
	                    %>
	                        <li class="nav-item">
	                            <a class="nav-link text-body small" href="login.jsp">Login</a>
	                        </li>
                        <%}else{ %>
                        
	                        <li class="nav-item">
	                            <a class="nav-link text-body small" href="login.jsp?logout=true">Logout</a>
	                        </li>
                        <%} %>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3 text-right d-none d-md-block">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-auto mr-n2">
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-twitter"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-facebook-f"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-linkedin-in"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-instagram"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-google-plus-g"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-youtube"></small></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="row align-items-center bg-white py-3 px-lg-5">
            <div class="col-lg-4">
                <a href="index.html" class="navbar-brand p-0 d-none d-lg-block">
                    <h1 class="m-0 display-4 text-uppercase text-info">Crypto<span class="text-secondary font-weight-normal">News</span></h1>
                </a>
            </div>
            <div class="col-lg-8 text-center text-lg-right">
                <a href="https://freewebsitecode.com"><img class="img-fluid" src="img/ads-728x90.png" alt=""></a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-2 py-lg-0 px-lg-5">
            <a href="index.html" class="navbar-brand d-block d-lg-none">
                <h1 class="m-0 display-4 text-uppercase text-info">Biz<span class="text-white font-weight-normal">News</span></h1>
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-0 px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">
                    <a href="index.jsp" class="nav-item nav-link">Acceuil</a>
                    <a href="propos.jsp" class="nav-item nav-link active">A propos</a>
                    
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Categories</a>
                          <div class="dropdown-menu rounded-0 m-0">
                        <%@page import="java.sql.*"%>
                        																			<% 
      
    Connection cn;
    Statement st;
    ResultSet rs;
    
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root","");
    st=cn.createStatement();
   String req="select * from categorie";
 rs=st.executeQuery(req);
 while(rs.next()){
       %>
											
                             
                              <a href="catego.jsp?cat=<% out.print(rs.getString(1)); %>" class="dropdown-item"><% out.print(rs.getString(2)); %></a>
                         
								
                                                                                        
                                                                                        
                                                                                        
                  <%
                      }
        } catch(Exception ex) {
            System.out.println(ex.getMessage());      
        }


            
                         %> 
                      
                        
                        </div>
                    </div>
                    <a href="contact.jsp" class="nav-item nav-link">Contactez-nous</a>
                    <% if(session.getAttribute("agent") == null){ %>
                    	<a href="inscrire.jsp" class="nav-item nav-link">S'inscrire</a>
                    <% } %>
                </div>
                <div class="input-group ml-auto d-none d-lg-flex" style="width: 100%; max-width: 300px;">
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->
        
    <!-- Contact Start -->
    <div class="container-fluid mt-5 pt-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-title mb-0">
                        <h4 class="m-0 text-uppercase font-weight-bold">Crypto</h4>
                    </div>
                    <div class="bg-white border border-top-0 p-4 mb-3">
                        <div class="mb-4">
                        </div>
                        <p>
                        La crypto-monnaie est une monnaie numérique décentralisée basée sur la technologie blockchain. Vous connaissez peut-être les versions les plus populaires, Bitcoin et Ethereum, mais il existe plus de 5 000 crypto-monnaies différentes en circulation.
                        </p>
                        
                        <h5 class="text-uppercase font-weight-bold mb-3">Comment fonctionne la crypto-monnaie ? </h5>
                        
                        <img alt="" src="images/what-is-crypto.jpg"  style="width: 680px;">
                        <p>
                        Une crypto-monnaie est un moyen d'échange numérique, crypté et décentralisé. Contrairement au dollar américain ou à l'euro, il n'y a pas d'autorité centrale qui gère et maintient la valeur d'une crypto-monnaie. Au lieu de cela, ces tâches sont largement réparties entre les utilisateurs d'une crypto-monnaie via Internet.

Vous pouvez utiliser la cryptographie pour acheter des biens et services réguliers, bien que la plupart des gens investissent dans les crypto-monnaies comme ils le feraient dans d'autres actifs, comme les actions ou les métaux précieux. Bien que la crypto-monnaie soit une classe d'actifs nouvelle et passionnante, son achat peut être risqué car vous devez entreprendre une bonne quantité de recherches pour bien comprendre le fonctionnement de chaque système.
                        </p>
                        
                    </div>
                </div>
                <div class="col-lg-4">
                    <!-- Social Follow Start -->
                     <div class="mb-3">
                        <div class="section-title mb-0">
                            <h4 class="m-0 text-uppercase font-weight-bold">Follow Us</h4>
                        </div>
                        <div class="bg-white border border-top-0 p-3">
                            <a href="" class="d-block w-100 text-white text-decoration-none mb-3" style="background: #39569E;">
                                <i class="fab fa-facebook-f text-center py-4 mr-3" style="width: 65px; background: rgba(0, 0, 0, .2);"></i>
                                <span class="font-weight-medium">12,345 Fans</span>
                            </a>
                            <a href="" class="d-block w-100 text-white text-decoration-none mb-3" style="background: #52AAF4;">
                                <i class="fab fa-twitter text-center py-4 mr-3" style="width: 65px; background: rgba(0, 0, 0, .2);"></i>
                                <span class="font-weight-medium">12,345 Followers</span>
                            </a>
                         
                            <a href="" class="d-block w-100 text-white text-decoration-none mb-3" style="background: #C8359D;">
                                <i class="fab fa-instagram text-center py-4 mr-3" style="width: 65px; background: rgba(0, 0, 0, .2);"></i>
                                <span class="font-weight-medium">12,345 Followers</span>
                            </a>
                      
                         
                        </div>
                    </div>
                    <!-- Social Follow End -->

                    <!-- Newsletter Start -->
                    <!-- Newsletter End -->
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

<!-- Footer Start -->
<div class="container-fluid bg-dark pt-5 px-sm-3 px-md-5 mt-5">
        <div class="row py-4">
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="mb-4 text-white text-uppercase font-weight-bold">Contactez-nous</h5>
                <p class="font-weight-medium"><i class="fa fa-map-marker-alt mr-2"></i>EST LAAYOUNE, LAAYOUNE</p>
                <p class="font-weight-medium"><i class="fa fa-phone-alt mr-2"></i>+2123636366</p>
                <p class="font-weight-medium"><i class="fa fa-envelope mr-2"></i>cryptonews@gmail.com</p>
             
            </div>
       
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="mb-4 text-white text-uppercase font-weight-bold">Categories</h5>
                <div class="m-n1">
                    
                        
 <%
  
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root","");
    st=cn.createStatement();
   String req="select * from categorie";
 rs=st.executeQuery(req);
 while(rs.next()){
       %>
											
                             
                              <a href="catego.jsp?cat=<% out.print(rs.getString(1)); %>" class="btn btn-sm btn-secondary m-1"><% out.print(rs.getString(2)); %></a>
                         
								
                                                                                        
                                                                                        
                                                                                        
                  <%
                      }
        } catch(Exception ex) {
            System.out.println(ex.getMessage());      
        }


            
                         %> 
                   
                </div>
                         
                         
            
            </div>
                                  <div class="col-lg-3 col-md-6 mb-5">
         
                <h6 class="mt-4 mb-3 text-white text-uppercase font-weight-bold">Follow Us</h6>
                <div class="d-flex justify-content-start">
                    <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="wwww.freewebsitecode.com"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="https://www.facebook.com/FreeWebsiteCode/"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="wwww.freewebsitecode.com"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="wwww.freewebsitecode.com"><i class="fab fa-instagram"></i></a>
                    <a class="btn btn-lg btn-secondary btn-lg-square" href="https://www.youtube.com/channel/UC9HlQRmKgG3jeVD_fBxj1Pw/videos"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
              </div>  
        </div>
                         
  
    <div> class="container-fluid py-4 px-sm-3 px-md-5" style="background: #111111;">
        <p class="m-0 text-center">&copy; <a href="#">CryptoNews</a>.
		
    </p>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-info btn-square back-to-top"><i class="fa fa-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
