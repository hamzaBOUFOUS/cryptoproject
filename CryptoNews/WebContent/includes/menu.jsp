<!-- Left Sidebar Start -->
<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <!-- Search form -->
        <div class="clearfix"></div>
        <!--- Profile -->
        <div class="profile-info">
            <div class="col-xs-4">
                <a href="profile.html" class="rounded-image profile-image"><img src="images/user.png"></a>
            </div>
            <div class="col-xs-8">
                <div class="profile-text">Admin <b></b></div>
            </div>
        </div>
        <!--- Divider -->
        <div class="clearfix"></div>
        <hr class="divider" />
        <div class="clearfix"></div>
        <!--- Divider -->
        <div id="sidebar-menu">
            <ul>
                <li>
                    <a href="home.jsp">
                        <i class='icon-home-3'></i>
                        <span>Home</span>
                    </a>
                </li>
                <li class="has_sub">
				    <a href="javascript:void(0);">
				        <i class="icon-newspaper-1"></i>
				        <span>Gestion des News</span> 
				        <span class="pull-right">
				            <i class="fa fa-angle-down"></i>
				        </span>
				    </a>
				    <ul>
				        <li>
				            <a href="managenews.jsp">
				                <span>List des News</span>
				            </a>
				        </li>
				        <li>
				            <a href="addnews.jsp">
				                <span>Ajoute un News</span>
				            </a>
				        </li>
				    </ul>
				</li>
                <li>
				    <a href="javascript:void(0);">
				        <i class="fa fa-folder-open"></i>
				        <span>Gestion des Categories</span> 
				        <span class="pull-right">
				            <i class="fa fa-angle-down"></i>
				        </span>
				    </a>
				    <ul>
				        <li>
				            <a href="listcat.jsp">
				                <span>List des Categories</span>
				            </a>
				        </li>
				        <li>
				            <a href="addcat.jsp">
				                <span>Ajoute un Categorie</span>
				            </a>
				        </li>
				    </ul>
				</li>
                <li>
				    <a href="javascript:void(0);">
				        <i class="fa fa-users"></i>
				        <span>Gestion des Utilisateurs</span> 
				        <span class="pull-right">
				            <i class="fa fa-angle-down"></i>
				        </span>
				    </a>
				    <ul>
				        <li>
				            <a href="manageuser.jsp">
				                <span>List des Utilisateurs</span>
				            </a>
				        </li>
				        <li>
				            <a href="adduser.jsp">
				                <span>Ajoute un Utilisateur</span>
				            </a>
				        </li>
				    </ul>
				</li>
               <!--  <li>
				    <a href="javascript:void(0);">
				        <i class="fa fa-users"></i>
				        <span>Manage Pages</span> 
				        <span class="pull-right">
				            <i class="fa fa-angle-down"></i>
				        </span>
				    </a>
				    <ul>
				        <li>
				            <a href="manageuser.jsp">
				                <span>Page</span>
				            </a>
				        </li>
				    </ul>
				</li> -->
                <li>
                    <a href='managecompte.jsp'>
                        <i class='icon-users-1'></i><span>Manage Account</span>
                    </a>
                </li>
                <li>
                    <a href='managecom.jsp'>
                        <i class='fa fa-comments'></i>
                        <span>Manage Comments</span>
                    </a>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div><br><br><br>
    </div>
</div>
<!-- Left Sidebar End -->