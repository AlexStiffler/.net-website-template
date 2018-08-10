<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<!DOCTYPE html>
<html lang="en">
<head id="ctl00_Head1">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>SIInfotech | Admin Panel </title>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="asset/css/font-awesome.min.css" rel="stylesheet" />
    <!-- Updated CSS -->
    <link href="asset/css/bootstrap.min.css" rel="stylesheet" />
    <link href="asset/css/mdb.min.css" rel="stylesheet" />
    <link href="asset/css/style.css" rel="stylesheet" />
</head>
<body onload=" noBack();" class="fixed-sn white-skin">
    <form id="form1" runat="server">
        <header>
            <div id="slide-out" class="side-nav sn-bg-4 fixed">
                <ul id="ctl00_css3menu2" class="custom-scrollbar">
                    <li class="logo-sn">
                        <div class="text-center">
                            <a href="HomePage.aspx" class="pl-0">
                                <img src="http://siinfotech.com/img/SI-INFOTECH-logo.png" alt="logo" class="img-fluid" />
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="card  profile-card">
                            <div class="avatar z-depth-1-half mb-4">
                                <img id="ctl00_image_user" class="rounded-circle" alt="profile-pic" src="asset/img/profile-pic.png" style="border-width: 0px;" />
                            </div>
                            <div class="card-body">
                                <div id="detail" class="text-center">
                                    <p>
                                        <br />
                                        Account Type :
                                            <span id="ctl00_lblRole">Admin</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <ul class="collapsible collapsible-accordion">
                            <li id="ctl00_Li1"><a href="index.aspx" class="collapsible-header waves-effect arrow-r"><i class="fa fa-tachometer"></i>Dashboard</a></li>
                            <li id="Li1"><a href="sisStudentProfile.aspx" class="collapsible-header waves-effect arrow-r"><i class="fa fa-user"></i>CMS</a></li>
                            <li id="ctl00_li_Sprofile"><a href="sisStudentProfile.aspx" class="collapsible-header waves-effect arrow-r"><i class="fa fa-user"></i>Email Subscription</a></li>
                            <li id="ctl00_li_SWorksheet"><a href='sisStudentWorksheet.aspx' class="collapsible-header waves-effect arrow-r"><i class="fa fa-file-text-o"></i>Career</a>
                            </li>
                            <li id="ctl00_li_ImageGallery" class="topmenu"><a href='sisimagegallery.aspx' class="collapsible-header waves-effect arrow-r"><i class="fa fa-bolt"></i>Banner</a>
                            </li>
                            <li id="ctl00_li_VideoGallery"><a href='sisvideogallery.aspx' class="collapsible-header waves-effect arrow-r"><i class="fa fa-video-camera" aria-hidden="true"></i>Contact</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="sidenav-bg mask-strong"></div>
            </div>
            <nav class="navbar fixed-top navbar-expand-lg scrolling-navbar double-nav">
                <div class="float-left hidden-bar">
                    <a href="#" data-activates="slide-out" class="button-collapse black-text"><i class="fa fa-bars"></i></a>
                    <h5 class="mt-2 ml-3">SIInfotech Pvt. Ltd.</h5>
                </div>
                <div class="breadcrumb-dn mr-auto">
                    <h5 class="mt-2 ml-3">SIInfotech Pvt. Ltd.</h5>
                </div>
                <ul class="nav navbar-nav nav-flex-icons ml-auto">

                    <li class="nav-item">
                        <a class="nav-link waves-effect" data-toggle="modal" data-target="#techSupport"><i class="fa fa-comments-o"></i><span class="clearfix d-none d-sm-inline-block">Support</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle waves-effect" href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-user"></i><span class="clearfix d-none d-sm-inline-block">
                                <span id="ctl00_lblWelcomeMsg">Welcome Demo</span></span></a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                            <a href="sisStudentProfile.aspx" class="dropdown-item">My account</a>
                            <a class="dropdown-item" href="sisChangePassword.aspx">Change Password</a>
                            <a class="dropdown-item" href='RedirectPage.aspx'>Log Out</a>
                        </div>
                    </li>
                </ul>
            </nav>
        </header>

        <main>
            <div class="container-fluid">
    <section class="notification-card">
        <div class="row">
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card">
                    <div class="row mt-3">
                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg success-color ml-4 waves-effect waves-light"><i class="fa fa-file-text-o" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-7 col-7 text-right pr-5">
                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">
                                <span id="ctl00_ContentPlaceHolder1_lblworkupTotal">[124]</span></h5>
                            <p class="font-small grey-text">
                                Email Subscription
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card">
                    <div class="row mt-3" id="td_Worksheet">
                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg warning-color ml-4 waves-effect waves-light"><i class="fa fa-server" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-7 col-7 text-right pr-5">
                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">
                                <span id="ctl00_ContentPlaceHolder1_lbldocupTotal">[6]</span></h5>
                            <p class="font-small grey-text">
                                Resume Submitted
                              </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card">
                    <div class="row mt-3">
                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg light-blue lighten-1 ml-4 waves-effect waves-light"><i class="fa fa-bolt" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-7 col-7 text-right pr-5">
                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">
                                <span id="ctl00_ContentPlaceHolder1_lbligupTotal">[2538]</span></h5>
                            <p class="font-small grey-text">
                               Active users
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card">
                    <div class="row mt-3">
                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg red accent-2 ml-4 waves-effect waves-light"><i class="fa fa-video-camera" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-7 col-7 text-right pr-5">
                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">
                                <span id="ctl00_ContentPlaceHolder1_lblvgupTotal">[544]</span>
                            </h5>
                            <p class="font-small grey-text">
                                Enquiry
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="row">
            
            <div class="col-md-6">
                <div class="card card-cascade narrower mt-5">
                    <div class="view view-cascade py-3 gradient-card-header info-color">
                        <h5 class="mb-0">Notification</h5>
                    </div>
                    <div class="card-body card-body-cascade">
                        <table class="table large-header">
                            <thead>
                                <tr>
                                    <th class="font-weight-bold dark-grey-text"><strong>Headline</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Date</strong></th>
                                </tr>
                            </thead>
                        </table>
                        <div class="card-scroll style-scroll">
                            <table class='table'><tr><td>AIIMS MAY 2016</td><td>23-10-2016</td></tr><tr><td>CBT Reminder 2016</td><td>15-09-2016</td></tr><tr><td>CBT Reminder 2016</td><td>14-09-2016</td></tr></table>
                        </div>
                        <a href="SisNotification.aspx" class="btn btn btn-flat grey lighten-3 btn-rounded waves-effect float-right font-weight-bold dark-grey-text" style="padding: 1rem!important;">View more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card card-cascade narrower mt-5">
                    <div class="view view-cascade py-3 gradient-card-header info-color">
                        <h5 class="mb-0">News and Circular</h5>
                    </div>
                    <div class="card-body card-body-cascade">
                        <table class="table large-header">
                            <thead>
                                <tr>
                                    <th class="font-weight-bold dark-grey-text"><strong>Headline</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Date</strong></th>
                                </tr>
                            </thead>
                        </table>
                        <div class="card-scroll style-scroll">
                            <div>
	<table cellspacing="0" class="table table-hover" border="0" id="ctl00_ContentPlaceHolder1_GridNewsCircular" style="border-collapse:collapse;">
		<tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl02_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl02$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">AIIMS Nov 2015 Topper</a>
                                        </td><td align="left" style="color:Black;">08/11/2015</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl03_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl03$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">AIIMS MOCK (MD/MS)</a>
                                        </td><td align="left" style="color:Black;">26/04/2015</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl04_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl04$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">PGI MOCK (MD/MS)</a>
                                        </td><td align="left" style="color:Black;">26/04/2015</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl05_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl05$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">DAMS-CBT (Computer Base Test)</a>
                                        </td><td align="left" style="color:Black;">01/09/2014</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl06_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl06$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">DVT (DAMS Visual Treat)</a>
                                        </td><td align="left" style="color:Black;">01/09/2014</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl07_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl07$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">AIIMS Discussion Nov 2013</a>
                                        </td><td align="left" style="color:Black;">24/04/2014</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl08_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl08$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">DAMS DL RC Only</a>
                                        </td><td align="left" style="color:Black;">14/04/2014</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl09_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl09$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">AIIMS Discussion via Satellite</a>
                                        </td><td align="left" style="color:Black;">08/04/2014</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl10_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl10$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">New Satellite Center Opening</a>
                                        </td><td align="left" style="color:Black;">11/03/2014</td>
		</tr><tr onmouseover="javascript:SetMouseOver(this)" onmouseout="javascript:SetMouseOut(this)">
			<td align="left">
                                            <a id="ctl00_ContentPlaceHolder1_GridNewsCircular_ctl11_lnkbtn" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$GridNewsCircular$ctl11$lnkbtn&#39;,&#39;&#39;)" style="text-decoration:none;">Announcement DAMS Cloud</a>
                                        </td><td align="left" style="color:Black;">06/03/2014</td>
		</tr>
	</table>
</div>
                        </div>
                        <a class="btn btn-flat grey lighten-3 btn-rounded waves-effect float-right font-weight-bold dark-grey-text" href="SisNotification.aspx" style="padding: 1rem!important;">View More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hidden content -->
                </div>
               </main>
        <div id="ctl00_bannerads" style="display: none;">
            <table>
                <tbody>
                    <tr>
                        <td style="">
                            <input type="button" id="myButton" onclick="slideads();" value="ACHIEVERS" /></td>
                        <td valign="middle">
                            <div id="images" style="display: none;">
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Footer -->
        <footer class="page-footer pt-0 mt-5 rgba-stylish-light">
            <div class="footer-copyright py-3 text-center">
                <div class="container-fluid pull-right">
                    © 2015-2018 Powered by: <a href="https://siinfotech.com" target="_blank">SIInfotech.com</a>
                    Last Login : 
                    <span id="ctl00_lbl_siteVistTime" class="viewMore12" style="color: White;">10-08-2018</span>
                    Last Login IP :
                    <span id="ctl00_lbl_fromIpText" class="viewMore12" style="color: White;">0.0.0.0</span>
                </div>
            </div>
        </footer>
    </form>

    <script type="text/javascript">
        function theRotator() {
            //Set the opacity of all images to 0
            $('div.rotator ul li').css({ opacity: 0.0 });

            //Get the first image and display it (gets set to full opacity)
            $('div.rotator ul li:first').css({ opacity: 1.0 });

            //Call the rotator function to run the slideshow, 6000 = change to next image after 6 seconds

            if ($('div.rotator ul li').length > 1) {
                setTimeout('rotate()', 6000);
            }
        }

        function rotate() {
            //Get the first image
            var current = ($('div.rotator ul li.show') ? $('div.rotator ul li.show') : $('div.rotator ul li:first'));

            if (current.length == 0) current = $('div.rotator ul li:first');

            //Get next image, when it reaches the end, rotate it back to the first image
            var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('div.rotator ul li:first') : current.next()) : $('div.rotator ul li:first'));

            //Un-comment the 3 lines below to get the images in random order

            //var sibs = current.siblings();
            //var rndNum = Math.floor(Math.random() * sibs.length );
            //var next = $( sibs[ rndNum ] );


            //Set the fade in effect for the next image, the show class has higher z-index
            next.css({ opacity: 0.0 }).addClass('show').animate({ opacity: 1.0 }, 1000);

            //Hide the current image
            current.animate({ opacity: 0.0 }, 1000, function () { setTimeout('rotate()', 6000); }).removeClass('show');

        };

        $(document).ready(function () {
            //Load the slideshow
            theRotator();
            $('div.rotator').fadeIn(1000);
            $('div.rotator ul li').fadeIn(1000); // tweek for IE
        });
    </script>
    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script src="https://cloud.damsdelhi.com/assets/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script src="https://cloud.damsdelhi.com/assets/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script src="https://cloud.damsdelhi.com/assets/js/bootstrap.js"></script>
    <!-- MDB core JavaScript -->
    <script src="https://cloud.damsdelhi.com/assets/js/mdb.min.js"></script>
    <!--Custom scripts-->
    <script src="https://cloud.damsdelhi.com/assets/js/moment.min.js"></script>
    <script src="https://cloud.damsdelhi.com/assets/js/jquery.dataTables.min.js"></script>
    <script src="https://cloud.damsdelhi.com/assets/js/dataTables.bootstrap4.min.js"></script>
    <!--Custom scripts-->
    <script>
        // SideNav Initialization
        $(".button-collapse").sideNav();

        var container = document.querySelector('.custom-scrollbar');
        Ps.initialize(container, {
            wheelSpeed: 2,
            wheelPropagation: true,
            minScrollbarLength: 20
        });

        // Data Picker Initialization
        $('.datepicker').pickadate();

        // Material Select Initialization
        $(document).ready(function () {
            $('.mdb-select').material_select();
        });

        // Tooltips Initialization
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })

        $(document).ready(function () {
            $('#datatables').DataTable();
        });

        // Material Select Initialization
        $(document).ready(function () {
            $('select[name="datatables_length"]').material_select();
        });
        // popovers Initialization
        $(function () {
            $('[data-toggle="popover"]').popover()
        })
    </script>

</body>
</html>
