

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
                    <a href="index.jsp" class="nav-item nav-link active">Acceuil</a>
                    <a href="propos.jsp" class="nav-item nav-link">A propos</a>
                    
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

    <br>
    <!-- Breaking News Start -->
    <div class="container-fluid bg-dark py-3 mb-3">
        <div class="container">
            <div class="row align-items-center bg-dark">
                <div class="col-12">
                    <div class="d-flex justify-content-between">
                        <div class="bg-info text-dark text-center font-weight-medium py-2" style="width: 170px;">Actuel News</div>
                        <div class="owl-carousel tranding-carousel position-relative d-inline-flex align-items-center ml-3"
                            style="width: calc(100% - 170px); padding-right: 90px;">
                            
                            									
																			<% 
      
  
  
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root",""); 
  st=cn.createStatement();
    
   String req="select * from news n,categorie c where n.id_cat=c.id_cat ORDER by id_n DESC limit 4";
 rs=st.executeQuery(req);
 while(rs.next()){
       %>

                               <div class="text-truncate"><a class="text-white text-uppercase font-weight-semi-bold" href="detail.jsp?id=<% out.print(rs.getString(1)); %>"><% out.print(rs.getString(2)); %> </a></div>
                                                                                
                                                                                        
                  <%
                      }
        } catch(Exception ex) {
            System.out.println(ex.getMessage());      
        }


            
                         %>   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breaking News End -->

    <!-- Main News Slider Start -->

    <!-- Main News Slider End -->




    <!-- Featured News Slider Start -->
    <div class="container-fluid pt-5 mb-3">
    
    <%
    if(request.getParameter("login") !=null){
    	%>
    	
    	<div class="alert alert-info alert-dismissable" style="margin: 0 105px  10px 105px;">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <a href="#" class="alert-link">Vous Etre déja auhentifie</a>.
                            </div>
    	<%
    } else if(request.getParameter("login1") !=null){
    	%>
    	
    	<div class="alert alert-info alert-dismissable" style="margin: 0 105px  10px 105px;">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <a href="#" class="alert-link">Bien Authentifie</a>.
                            </div>
    	<%
    }
    
    %>
        <div class="container">
            <div class="section-title">
                <h4 class="m-0 text-uppercase font-weight-bold">Les Plus visitées</h4>
            </div>
            <div class="owl-carousel news-carousel carousel-item-4 position-relative">
                
            																			<% 
      
  
  
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root",""); 
  st=cn.createStatement();
    
   String req="select * from news n,categorie c where n.id_cat=c.id_cat ORDER by id_n DESC ";
 rs=st.executeQuery(req);
 while(rs.next()){
       %>

                              
              <div class="position-relative overflow-hidden" style="height: 300px;">
                    <img class="img-fluid h-100" src="<% out.print(rs.getString(3)); %>" style="object-fit: cover;">
                    <div class="overlay">
                        <div class="mb-2">
                            <a class="badge badge-info text-uppercase font-weight-semi-bold p-2 mr-2"
                                href=""><% out.print(rs.getString(7)); %></a>
                            <a class="text-white" href=""><small><% SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyy"); out.print(sdf.format(new Date())); %></small></a>
                        </div>
                        <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="detail.jsp?id=<% out.print(rs.getString(1)); %>"><% out.print(rs.getString(2)); %></a>
                    </div>
                </div>                     
                               
                               
                               
                               
                                                                                        
                  <%
                      }
        } catch(Exception ex) {
            System.out.println(ex.getMessage());      
        }


            
                         %>    
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            
         
           
       
            </div>
        </div>
    </div>
    <!-- Featured News Slider End -->


    <!-- News With Sidebar Start -->
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title">
                                <h4 class="m-0 text-uppercase font-weight-bold">Les Plus Recents</h4>
                                <a class="text-secondary font-weight-medium text-decoration-none" href=""></a>
                            </div>
                        </div>
                        
                        
                                        
            																			<% 
      
  
  
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root",""); 
  st=cn.createStatement();
    
   String req="select * from news n,categorie c where n.id_cat=c.id_cat ORDER by id_n DESC ";
 rs=st.executeQuery(req);
 while(rs.next()){
       %>

                              
                     
                               
                          <div class="col-lg-6">
                            <div class="position-relative mb-3">
                                <img class="img-fluid w-100" src="<% out.print(rs.getString(3)); %>" style="object-fit: cover;">
                                <div class="bg-white border border-top-0 p-4">
                                    <div class="mb-2">
                                        <a class="badge badge-info text-uppercase font-weight-semi-bold p-2 mr-2"
                                            href=""><% out.print(rs.getString(7)); %></a>
                                        <a class="text-body" href=""><small>Jan 01, 2045</small></a>
                                    </div>
                                    <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="detail.jsp?id=<% out.print(rs.getString(1)); %>"><% out.print(rs.getString(2)); %></a>
                                    <p   class="m-0"><% out.print(rs.getString(2) ); %></p>
                                </div>
                                <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                    <div class="d-flex align-items-center">
                                    </div>
                                    <div class="d-flex align-items-center"> 
       <% 
  			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root","");
    		st=cn.createStatement();
    
   			req="select COUNT(*) as cnt FROM commentaire where commentaire.id_n = "+rs.getString(1);
   			ResultSet rs1 =st.executeQuery(req);
 			if(rs1.first()){
       			%>    
                                <span class="ml-3"><i class="far fa-comment mr-2"></i><% out.print(rs1.getInt("cnt")); %></span>
                <%
 			}else{

       			%>    
                                <span class="ml-3"><i class="far fa-comment mr-2"></i>0</span>
                <%
 			}
                %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                    
                    
                               
                               
                                                                                        
                  <%
                      }
        } catch(Exception ex) {
            System.out.println(ex.getMessage());      
        }


            
                         %> 
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                 
                        
                
              
                 
                    </div>
                </div>
                
                <div class="col-lg-4">
                    <!-- Social Follow Start -->
                    
                          <div class="mb-3">
                        <div class="section-title mb-0">
                            <h4 class="m-0 text-uppercase font-weight-bold">Categories</h4>
                        </div>
                        <div class="bg-white border border-top-0 p-3">
                            <div class="d-flex flex-wrap m-n1">
                                                        																			<% 
      
 
  
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root","");
    st=cn.createStatement();
   String req="select * from categorie";
 rs=st.executeQuery(req);
 while(rs.next()){
       %>
											
                             
                              <a href="catego.jsp?cat=<% out.print(rs.getString(1)); %>" class="btn btn-sm btn-outline-secondary m-1"><% out.print(rs.getString(2)); %></a>
                         
								
                                                                                        
                                                                                        
                                                                                        
                  <%
                      }
        } catch(Exception ex) {
            System.out.println(ex.getMessage());      
        }


            
                         %> 
                                
                                
                       
                          
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    
                    
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

                    <!-- Popular News End -->

                    <!-- Newsletter Start -->
                    <!-- Newsletter End -->

                    <!-- Tags Start -->
              
                    <!-- Tags End -->
                </div>
            </div>
        </div>
    </div>
    <!-- News With Sidebar End -->


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
                         
   
    <div class="container-fluid py-4 px-sm-3 px-md-5" style="background: #111111;">
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
