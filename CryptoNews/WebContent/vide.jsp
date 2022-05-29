

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Dashboard | Coco - Responsive Bootstrap Admin Template</title>   
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
		
<!-- Top Bar Start -->
<div class="topbar">
    <div class="topbar-left">
        <div class="logo">
            <h1><a href="#"><img src="assets/img/logo.png" alt="Logo"></a></h1>
        </div>
        <button class="button-menu-mobile open-left">
        <i class="fa fa-bars"></i>
        </button>
    </div>
    <!-- Button mobile view to collapse sidebar menu -->
    <div class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="navbar-collapse2">
                <ul class="nav navbar-nav hidden-xs">
                    
               
                </ul>
                <ul class="nav navbar-nav navbar-right top-navbar">
               
                    <li class="dropdown iconify hide-phone">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="label label-danger absolute">3</span></a>
                        <ul class="dropdown-menu dropdown-message">
                            <li class="dropdown-header notif-header"><i class="icon-mail-2"></i> New Messages</li>
                            <li class="unread">
                                <a href="#" class="clearfix">
                                    <img src="images/users/chat/2.jpg" class="xs-avatar ava-dropdown" alt="Avatar">
                                    <strong>John Doe</strong><i class="pull-right msg-time">5 minutes ago</i><br />
                                    <p>Duis autem vel eum iriure dolor in hendrerit ...</p>
                                </a>
                            </li>
                            <li class="unread">
                                <a href="#" class="clearfix">
                                    <img src="images/users/chat/1.jpg" class="xs-avatar ava-dropdown" alt="Avatar">
                                    <strong>Sandra Kraken</strong><i class="pull-right msg-time">22 minutes ago</i><br />
                                    <p>Duis autem vel eum iriure dolor in hendrerit ...</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="clearfix">
                                    <img src="images/users/chat/3.jpg" class="xs-avatar ava-dropdown" alt="Avatar">
                                    <strong>Zoey Lombardo</strong><i class="pull-right msg-time">41 minutes ago</i><br />
                                    <p>Duis autem vel eum iriure dolor in hendrerit ...</p>
                                </a>
                            </li>
                            <li class="dropdown-footer"><div class=""><a href="#" class="btn btn-sm btn-block btn-primary"><i class="fa fa-share"></i> See all messages</a></div></li>
                        </ul>
                    </li>
                    <li class="dropdown topbar-profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="rounded-image topbar-profile-image"><img src="images/users/user-35.jpg"></span> Jane <strong>Doe</strong> <i class="fa fa-caret-down"></i></a>
                        <ul class="dropdown-menu">
                         
                            <li><a href="#">Account Setting</a></li>
                          
                            <li><a class="md-trigger" data-modal="logout-modal"><i class="icon-logout-1"></i> Logout</a></li>
                        </ul>
                    </li>
                   
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
<!-- Top Bar End -->
		    <!-- Left Sidebar Start -->
        <div class="left side-menu">
            <div class="sidebar-inner slimscrollleft">
               <!-- Search form -->
              
                <div class="clearfix"></div>
                <!--- Profile -->
                <div class="profile-info">
                    <div class="col-xs-4">
                      <a href="profile.html" class="rounded-image profile-image"><img src="images/users/user-100.jpg"></a>
                    </div>
                    <div class="col-xs-8">
                        <div class="profile-text">Welcome <b>Jane</b></div>
                      
                    </div>
                </div>
                <!--- Divider -->
                <div class="clearfix"></div>
                <hr class="divider" />
                <div class="clearfix"></div>
                <!--- Divider -->
                <div id="sidebar-menu">
                    <ul>
					
					<li class='has_sub'><a href='javascript:void(0);'>
					<i class='icon-home-3'></i><span>Home</span> <span class="pull-right">
					</span></a>
					
					</li>
					
					<li class='has_sub'><a href='javascript:void(0);'> <i class="icon-newspaper-1"></i>
					<span>Manage News</span> <span class="pull-right"><i class="fa fa-angle-down"></i>
					</span></a>
					<ul>
					<li><a href='alerts.html'><span>Add Post</span></a></li>
					
					<li>
					<a href='buttons.html'><span>Manage Posts</span></a></li>
					</ul>
					</li>
					
						<li class='has_sub'><a href='javascript:void(0);'> <i class="fa fa-folder-open"></i>
					<span>Manage Categories</span> <span class="pull-right"><i class="fa fa-angle-down"></i>
					</span></a>
					<ul>
					<li><a href='alerts.html'><span>Add Category</span></a></li>
					
					<li>
					<a href='buttons.html'><span>Manage Categories</span></a></li>
					</ul>
					</li>
					
					
						<li class='has_sub'><a href='javascript:void(0);'> <i class="fa fa-users"></i>
					<span>Manage Users</span> <span class="pull-right"><i class="fa fa-angle-down"></i>
					</span></a>
					<ul>
					<li><a href='alerts.html'><span>Add Users</span></a></li>
					
					<li>
					<a href='buttons.html'><span>Manage Users</span></a></li>
					</ul>
					</li>
					
					
							<li class='has_sub'><a href='javascript:void(0);'> <i class="icon-th-large"></i>
					<span>Manage Pages</span> <span class="pull-right"><i class="fa fa-angle-down"></i>
					</span></a>
					<ul>
					<li><a href='alerts.html'><span>About us</span></a></li>
					
					<li>
					<a href='buttons.html'><span>Concact us</span></a></li>
					</ul>
					</li>
					
					<li class='has_sub'><a href='javascript:void(0);'><i class="icon-users-1"></i>
					<span>Manage Accounts</span> <span class="pull-right">
					</span></a>
					
					</li>
					
					<li class='has_sub'><a href='javascript:void(0);'>
					<i class="fa fa-comments"></i><span>Manage Comments</span> <span class="pull-right">
					</span></a>
					
					</li>
					
					
			
					</ul>
                </div>
            <div class="clearfix"></div>
           
            <div class="clearfix"></div><br><br><br>
        </div>
         
        </div>
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
