<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Liste des categorie</title>   
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="description" content="">
        <meta name="keywords" content="coco bootstrap template, coco admin, bootstrap,admin template, bootstrap admin,">
        <meta name="author" content="Huban Creative">

        <!-- Base Css Files -->
        <link href="assets/libs/jqueryui/ui-lightness/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" />
        <link href="assets/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="assets/libs/fontello/css/fontello.css" rel="stylesheet" />
        <link href="assets/libs/animate-css/animate.min.css" rel="stylesheet" />
        <link href="assets/libs/nifty-modal/css/component.css" rel="stylesheet" />
        <link href="assets/libs/magnific-popup/magnific-popup.css" rel="stylesheet" /> 
        <link href="assets/libs/ios7-switch/ios7-switch.css" rel="stylesheet" /> 
        <link href="assets/libs/pace/pace.css" rel="stylesheet" />
        <link href="assets/libs/sortable/sortable-theme-bootstrap.css" rel="stylesheet" />
        <link href="assets/libs/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
        <link href="assets/libs/jquery-icheck/skins/all.css" rel="stylesheet" />
        <!-- Code Highlighter for Demo -->
        <link href="assets/libs/prettify/github.css" rel="stylesheet" />
        
                <!-- Extra CSS Libraries Start -->
                <link href="assets/libs/rickshaw/rickshaw.min.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/morrischart/morris.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/jquery-jvectormap/css/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/jquery-clock/clock.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/bootstrap-calendar/css/bic_calendar.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/sortable/sortable-theme-bootstrap.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/jquery-weather/simpleweather.css" rel="stylesheet" type="text/css" />
                <link href="assets/libs/bootstrap-xeditable/css/bootstrap-editable.css" rel="stylesheet" type="text/css" />
                <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
                <!-- Extra CSS Libraries End -->
        <link href="assets/css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <link rel="shortcut icon" href="assets/img/favicon.ico">
        <link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png" />
        <link rel="apple-touch-icon" sizes="57x57" href="assets/img/apple-touch-icon-57x57.png" />
        <link rel="apple-touch-icon" sizes="72x72" href="assets/img/apple-touch-icon-72x72.png" />
        <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-touch-icon-76x76.png" />
        <link rel="apple-touch-icon" sizes="114x114" href="assets/img/apple-touch-icon-114x114.png" />
        <link rel="apple-touch-icon" sizes="120x120" href="assets/img/apple-touch-icon-120x120.png" />
        <link rel="apple-touch-icon" sizes="144x144" href="assets/img/apple-touch-icon-144x144.png" />
        <link rel="apple-touch-icon" sizes="152x152" href="assets/img/apple-touch-icon-152x152.png" />
    </head>
    <body class="fixed-left">
        <!-- Modal Start -->
        	<!-- Modal Task Progress -->	
	<div class="md-modal md-3d-flip-vertical" id="task-progress">
		<div class="md-content">
			<h3><strong>Task Progress</strong> Information</h3>
			<div>
				<p>CLEANING BUGS</p>
				<div class="progress progress-xs for-modal">
				  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
					<span class="sr-only">80&#37; Complete</span>
				  </div>
				</div>
				<p>POSTING SOME STUFF</p>
				<div class="progress progress-xs for-modal">
				  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
					<span class="sr-only">65&#37; Complete</span>
				  </div>
				</div>
				<p>BACKUP DATA FROM SERVER</p>
				<div class="progress progress-xs for-modal">
				  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
					<span class="sr-only">95&#37; Complete</span>
				  </div>
				</div>
				<p>RE-DESIGNING WEB APPLICATION</p>
				<div class="progress progress-xs for-modal">
				  <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
					<span class="sr-only">100&#37; Complete</span>
				  </div>
				</div>
				<p class="text-center">
				<button class="btn btn-danger btn-sm md-close">Close</button>
				</p>
			</div>
		</div>
	</div>
		
	<!-- Modal Logout -->
	<div class="md-modal md-just-me" id="logout-modal">
		<div class="md-content">
			<h3><strong>Logout</strong> Confirmation</h3>
			<div>
				<p class="text-center">Are you sure want to logout from this awesome system?</p>
				<p class="text-center">
				<button class="btn btn-danger md-close">Nope!</button>
				<a href="index.jsp" class="btn btn-success md-close">Yeah, I'm sure</a>
				</p>
			</div>
		</div>
	</div>        <!-- Modal End -->	
	<!-- Begin page -->
	<div id="wrapper">
		
<%@include file="includes/menut.jsp" %>
<!-- Top Bar End -->
		    <!-- Left Sidebar Start -->
<%@include file="includes/menu.jsp" %>
        <!-- Left Sidebar End -->		    <!-- Right Sidebar Start -->

    <!-- Right Sidebar End -->		
        <!-- Left Sidebar End -->		    <!-- Right Sidebar Start -->

    <!-- Right Sidebar End -->		
		<!-- Start right content -->
        <div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Content here -->
			<!-- ============================================================== -->
            <div class="content">
				<!-- Start info box -->
				<% 
      
    Connection cn;
    Statement st;
    ResultSet rs;
  
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root","");
    st=cn.createStatement();
    if (request.getParameter("id") != null && request.getParameter("edit")!=null) {
        st.executeUpdate("update categorie set libelle='"+request.getParameter("lib")+"',description='"+request.getParameter("des")+"' where id_cat="+request.getParameter("id"));

      	%>
      	
                 
                 <div class="alert alert-info alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <a href="#" class="alert-link">Bien Edit</a>.
                            </div>
      	
      	<%
    } else if (request.getParameter("id") != null) {
       st.executeUpdate("delete from categorie where id_cat="+request.getParameter("id"));

     	%>
     
                 
                 <div class="alert alert-info alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <a href="#" class="alert-link">Bien Delete</a>.
                            </div>
     	
     	<%
    }
%>

				<div class="row top-summary" style="margin: 0px;">
			
	<h1>  Liste des Categories</h1>
            		           	</div>
<div class="row">
					<div class="col-md-12">
					
						<div class="widget">
							<div class="widget-header transparent">
								<h2><strong>Liste des categories</strong> </h2>
								<div class="additional-btn">
									<a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a>
									<a href="#" class="widget-toggle"><i class="icon-down-open-2"></i></a>
									<a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
								</div>
							</div>
							<div class="widget-content">
								<div class="static-table-scroll">
									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<tr>
													<th>No</th>
													<th>Libelle</th>
													<th>Description</th>
													<th>Action</th>
												</tr>
											</thead>
											
											<tbody>
																		
<%
   String req="select * from categorie";
 rs=st.executeQuery(req);
 while(rs.next()){
       %>
											<tr>
                              <td> <% out.print(rs.getString(1)); %></td>
                              <td><% out.print(rs.getString(2)); %></td>
                               <td><% out.print(rs.getString(3)); %></td>
                              
												<td>
									<div class="btn-group btn-group-xs">
														<a href="listcat.jsp?id=<% out.print(rs.getString(1)); %> " data-toggle="tooltip" title="Supprimer" class="btn btn-default"><i class="fa fa-power-off"></i></a>
														<a title="Edit" class="btn btn-default"
														data-toggle="modal" data-target="#exampleModal<% out.print(rs.getString(1)); %>"><i class="fa fa-edit"></i></a>
													</div>
												</td>
											</tr>
                                                                                        
                                                                                        
                                                                                        
                  <%
                      }
        } catch(Exception ex) {
            System.out.println(ex.getMessage());      
        }


            
                         %> 
											
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					

						
					</div>
			
                                    
                                    
                                    
                                    
                                    

				</div>
				<!-- End of info box -->

				<div class="row">
					
			
				</div>

				


				            <!-- Footer Start -->
          
            <!-- Footer End -->			
            </div>
			<!-- ============================================================== -->
			<!-- End content here -->
			<!-- ============================================================== -->

        </div>
		<!-- End right content -->

	</div>
	<div id="contextMenu" class="dropdown clearfix">
		    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display:block;position:static;margin-bottom:5px;">
		        <li><a tabindex="-1" href="javascript:;" data-priority="high"><i class="fa fa-circle-o text-red-1"></i> High Priority</a></li>
		        <li><a tabindex="-1" href="javascript:;" data-priority="medium"><i class="fa fa-circle-o text-orange-3"></i> Medium Priority</a></li>
		        <li><a tabindex="-1" href="javascript:;" data-priority="low"><i class="fa fa-circle-o text-yellow-1"></i> Low Priority</a></li>
		        <li><a tabindex="-1" href="javascript:;" data-priority="none"><i class="fa fa-circle-o text-lightblue-1"></i> None</a></li>
		    </ul>
		</div>
		
		
		
															<% 
      
    Connection cn2;
    Statement st2;
    ResultSet rs2;
  
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn2=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root",""); 
  st2=cn2.createStatement();
  
  
  
   String req2="select * from categorie";
 rs2=st2.executeQuery(req2);
 while(rs2.next()){
       %>

                                               
                                               <div class="modal fade" id="exampleModal<% out.print(rs2.getString(1)); %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
												    <div class="modal-dialog" role="document">
												        <div class="modal-content">
												            <form class="form-horizontal" role="form" method="post" action="listcat.jsp?edit=true&id=<% out.print(rs2.getString(1)); %>">
												                <div class="modal-header">
												                    
												                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
												                        <span aria-hidden="true">&times;</span>
												                    </button>
												                    <h5 class="modal-title" id="exampleModalLabel">Edit Categorie</h5>
												                </div>
												                <div class="modal-body">
								  <div class="form-group" style="margin: 20px">
									<label>Libelle</label>
									<input name="lib" type="text" value="<% out.print(rs2.getString(2)); %>" class="form-control" name="username">
								  </div>
								   <div class="form-group" style="margin: 20px">
									<label>Description</label>
									<textarea name="des" class="form-control" name="Contactmessage" style="height: 140px; resize: none;"><% out.print(rs2.getString(3)); %></textarea>
								  </div>
												                </div>
												                <div class="modal-footer">
												                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
												                    <button type="submit" class="btn btn-primary">Save changes</button>
												                </div>
												            </form>
												        </div>
												    </div>
												</div> 
												                                                              
                  <%
                      }
        } catch(Exception ex) {
            System.out.println(ex.getMessage());      
        }


            
                         %> 
	<!-- End of page -->
		<!-- the overlay modal element -->
	<div class="md-overlay"></div>
	<!-- End of eoverlay modal -->
	<script>
		var resizefunc = [];
	</script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="assets/libs/jquery/jquery-1.11.1.min.js"></script>
	<script src="assets/libs/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/libs/jqueryui/jquery-ui-1.10.4.custom.min.js"></script>
	<script src="assets/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/libs/jquery-detectmobile/detect.js"></script>
	<script src="assets/libs/jquery-animate-numbers/jquery.animateNumbers.js"></script>
	<script src="assets/libs/ios7-switch/ios7.switch.js"></script>
	<script src="assets/libs/fastclick/fastclick.js"></script>
	<script src="assets/libs/jquery-blockui/jquery.blockUI.js"></script>
	<script src="assets/libs/bootstrap-bootbox/bootbox.min.js"></script>
	<script src="assets/libs/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script src="assets/libs/jquery-sparkline/jquery-sparkline.js"></script>
	<script src="assets/libs/nifty-modal/js/classie.js"></script>
	<script src="assets/libs/nifty-modal/js/modalEffects.js"></script>
	<script src="assets/libs/sortable/sortable.min.js"></script>
	<script src="assets/libs/bootstrap-fileinput/bootstrap.file-input.js"></script>
	<script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="assets/libs/bootstrap-select2/select2.min.js"></script>
	<script src="assets/libs/magnific-popup/jquery.magnific-popup.min.js"></script> 
	<script src="assets/libs/pace/pace.min.js"></script>
	<script src="assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="assets/libs/jquery-icheck/icheck.min.js"></script>

	<!-- Demo Specific JS Libraries -->
	<script src="assets/libs/prettify/prettify.js"></script>

	<script src="assets/js/init.js"></script>
	<!-- Page Specific JS Libraries -->
	<script src="assets/libs/d3/d3.v3.js"></script>
	<script src="assets/libs/rickshaw/rickshaw.min.js"></script>
	<script src="assets/libs/raphael/raphael-min.js"></script>
	<script src="assets/libs/morrischart/morris.min.js"></script>
	<script src="assets/libs/jquery-knob/jquery.knob.js"></script>
	<script src="assets/libs/jquery-jvectormap/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="assets/libs/jquery-jvectormap/js/jquery-jvectormap-us-aea-en.js"></script>
	<script src="assets/libs/jquery-clock/clock.js"></script>
	<script src="assets/libs/jquery-easypiechart/jquery.easypiechart.min.js"></script>
	<script src="assets/libs/jquery-weather/jquery.simpleWeather-2.6.min.js"></script>
	<script src="assets/libs/bootstrap-xeditable/js/bootstrap-editable.min.js"></script>
	<script src="assets/libs/bootstrap-calendar/js/bic_calendar.min.js"></script>
	<script src="assets/js/apps/calculator.js"></script>
	<script src="assets/js/apps/todo.js"></script>
	<script src="assets/js/apps/notes.js"></script>
	<script src="assets/js/pages/index.js"></script>
	</body>
</html>
