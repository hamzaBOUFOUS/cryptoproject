<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<% HttpSession ss = request.getSession(false); %>

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
                        <%} else{ %>
                        
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
                    	<a href="inscrire.jsp" class="nav-item nav-link active">S'inscrire</a>
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
                        <h4 class="m-0 text-uppercase font-weight-bold">CREER UN COMPTE</h4>
                    </div>
                    <div class="bg-white border border-top-0 p-4 mb-3">
                        <div class="mb-4">
                        </div>
                        
                                <%@page import="java.sql.*"%>	
                                
                                
            <%                     
        
        if(session.getAttribute("agent") == null){
			
            if(request.getParameter("nom")!=null){
            	
	            String nom=request.getParameter("nom");
	            String prenom=request.getParameter("prenom");
		  		String email=request.getParameter("email");
		   		String mot=request.getParameter("mot");
		    	String tel=request.getParameter("tel");
		    
		    	String im="images/"+request.getParameter("im");
		    
		        try {  
		  			Class.forName("com.mysql.jdbc.Driver");
		  			cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root",""); 
		  			st=cn.createStatement();
		  			rs =st.executeQuery("select * from membre where email='"+email+"';");
	        		if(!rs.first()) {
		  			
			   			String req="INSERT INTO `membre` (`nom`, `email`, `mot`, `image`, `tel`) VALUES ( '"+nom+" "+prenom+"', '"+email+"', '"+mot+"', '"+im+"', '"+tel+"')";
			   			st=cn.createStatement();
			            st.executeUpdate(req);
			       		%>
			          
				          	<div class="alert alert-success">
				                      Compte Crée. <a href="login.jsp">Login</a>
				        	</div>
			          	<%
	        		}else{
	        			%>
			          	<div class="alert alert-danger">
			                      Erreur. email deja exist!
			        	</div>
			        	<%
	        		}
		        } catch(Exception ex) {
		            out.println(ex.getMessage());      
		        }

			}

		}%>    
                        <h6 class="text-uppercase font-weight-bold mb-3">Membre </h6>
                        <form method="POST" action="inscrire.jsp">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="nom" class="form-control p-4" placeholder="Nom" required="required"/>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="Prenom" class="form-control p-4" placeholder="Prenom" required="required"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control p-4" name="email" placeholder="Email" required="required"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control p-4" name="tel" placeholder="Telephone" required="required"/>
                            </div>
                             <div class="form-group">
                                <input type="password" class="form-control p-4" name="mot" placeholder="Mot de passe" required="required"/>
                            </div>
                            <div class="form-group">
                                <input type="file" class="form-control p-4" name="im" placeholder="image" required="required"/>
                            </div>
                            <div>
                                <button class="btn btn-info font-weight-semi-bold px-4" style="height: 50px;"
                                    type="submit">Envoyer</button>
                                <button class="btn btn-info font-weight-semi-bold px-4" style="height: 50px;"
                                    type="reset">Annuler</button>
                            </div>
                        </form>
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
