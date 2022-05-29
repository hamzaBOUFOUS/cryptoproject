 <%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gestion des commentaires</title>   
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
				<div class="row top-summary">
			
	<h1> Gestion des commentaires</h1>
            		           	</div>
            	<!-- Page Heading End-->				<!-- Your awesome content goes here -->
				<div class="row">
				
					<div class="col-md-12">
						<div class="widget">
							<div class="widget-header transparent">
								<h2><strong>Les commentaires</strong> </h2>
								<div class="additional-btn">
									<a href="#" class="hidden reload"><i class="icon-ccw-1"></i></a>
									<a href="#" class="widget-toggle"><i class="icon-down-open-2"></i></a>
									<a href="#" class="widget-close"><i class="icon-cancel-3"></i></a>
								</div>
							</div>
							<div class="widget-content">					
								<div class="table-responsive">
									<table data-sortable class="table">
										<thead>
											<tr>
												<th>Commentaire</th>
												<th>Date</th>
                                                                                                
                                                                                                <th>News</th>
								
												<th>Membre</th>
												<th>Statu</th>
												<th data-sortable="false">Option</th>
											</tr>
										</thead>
										
										<tbody>
       
									<% 
      
    Connection cn;
    Statement st;
    ResultSet rs;
  
        try {  
  Class.forName("com.mysql.jdbc.Driver");
  cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cryptonews","root",""); 
  st=cn.createStatement();
     if (request.getParameter("idc") != null) {
       st.executeUpdate("delete from commentaire where id_com='"+request.getParameter("idc")+"' ");
    }
     
         if (request.getParameter("idca") != null) {
       st.executeUpdate("update commentaire set statu=1 where id_com='"+request.getParameter("idca")+"' ");
    }
     
   String req="select id_com,commentaire,date_c,statu,titre,nom from commentaire c,news n,membre m where c.id_m=m.id_m and c.id_n=n.id_n";
 rs=st.executeQuery(req);
 while(rs.next()){
       %>
											<tr>
                              <td> <% out.print(rs.getString(2)); %></td>
                              <td> <% out.print(rs.getString(3)); %></td>
                          
                              <td><% out.print(rs.getString(5)); %></td>
                               <td><% out.print(rs.getString(6)); %></td>
                               <td> <% if(rs.getInt(4)==1) out.print("<span class='label label-success'>Actif</span>"); if(rs.getInt(4)==0) out.print("<span class='label label-warning'>En cours</span>");  %></td>
												<td>
									<div class="btn-group btn-group-xs">
														<a href="managecom.jsp?idc=<% out.print(rs.getString(1)); %> " data-toggle="tooltip" title="Supprimer" class="btn btn-default"><i class="fa fa-power-off"></i></a>
														<a href="managecom.jsp?idca=<% out.print(rs.getString(1)); %> " data-toggle="tooltip" title="Approver" class="btn btn-default"><span class="glyphicon glyphicon-ok-sign"></span></a>
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
