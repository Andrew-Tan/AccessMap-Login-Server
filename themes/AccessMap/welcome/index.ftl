<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="welcome-content/apple-icon.png">
    <link rel="icon" type="image/png" href="welcome-content/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>AccessMap Account</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"/>

    <!-- CSS Files -->
    <link href="welcome-content/bootstrap.min.css" rel="stylesheet"/>
    <link href="welcome-content/material-kit.css" rel="stylesheet"/>

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="welcome-content/demo.css" rel="stylesheet"/>

</head>

<body class="index-page">
<!-- Navbar -->
<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-index">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div class="collapse navbar-collapse" id="navigation-index">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="realms/AccessMap/account" target="_blank">
                        <i class="material-icons">dashboard</i> Account
                    </a>
                </li>
                <li>
                    <a href="./" target="_blank">
                        <i class="material-icons">forum</i> Blog
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="Follow us on Twitter" data-placement="bottom"
                       href="https://twitter.com/AccessMapSea" target="_blank"
                       class="btn btn-white btn-simple btn-just-icon">
                        <i class="fa fa-twitter"></i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="Visit our Github" data-placement="bottom"
                       href="https://github.com/AccessMap" target="_blank"
                       class="btn btn-white btn-simple btn-just-icon">
                        <i class="fa fa-github"></i>
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="Visit our blog" data-placement="bottom"
                       href="https://accessmap.io" target="_blank"
                       class="btn btn-white btn-simple btn-just-icon">
                        <i class="fa fa-wordpress"></i>
                    </a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<!-- End Navbar -->

<div class="wrapper">
    <div class="header header-filter" style="background-image: url('welcome-content/bg2.jpeg');">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="brand">
                        <h1>AccessMap Account</h1>
                        <h3>Control, protect, and secure your account, all in one place</h3>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="main main-raised">
        <div class="section section-basic">
            <div class="container">
            <#if successMessage?has_content>
                <div class="alert alert-success">
                    <div class="container-fluid">
                        <div class="alert-icon">
                            <i class="material-icons">check</i>
                        </div>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="material-icons">clear</i></span>
                        </button>
                        <b>Success Alert:</b> ${successMessage}
                    </div>
                </div>
            <#elseif errorMessage?has_content>
                <div class="alert alert-danger">
                    <div class="container-fluid">
                        <div class="alert-icon">
                            <i class="material-icons">error_outline</i>
                        </div>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true"><i class="material-icons">clear</i></span>
                        </button>
                        <b>Error Alert:</b> ${errorMessage}
                    </div>
                </div>
            <#elseif bootstrap>
                <#if localUser>
                    <p>Please create an initial admin user to get started.</p>
                <#else>
                    <p>
                        You need local access to create the initial admin user. Open <a
                            href="http://localhost:8080/auth">http://localhost:8080/auth</a>
                        or use the add-user-keycloak script.
                    </p>
                </#if>
            </#if>

            <#if bootstrap && localUser>
                <form method="post">
                    <p>
                        <label for="username">Username</label>
                        <input id="username" name="username"/>
                    </p>

                    <p>
                        <label for="password">Password</label>
                        <input id="password" name="password" type="password"/>
                    </p>

                    <p>
                        <label for="passwordConfirmation">Password confirmation</label>
                        <input id="passwordConfirmation" name="passwordConfirmation" type="password"/>
                    </p>

                    <input id="stateChecker" name="stateChecker" type="hidden" value="${stateChecker}"/>

                    <button id="create-button" type="submit">Create</button>
                </form>
            </#if>
            </div>
        </div>

    </div>
    <footer class="footer">
        <div class="container">
            <nav class="pull-left">
                <ul>
                    <li>
                        <a href="https://accessmap.io">
                            AccessMap
                        </a>
                    </li>
                    <li>
                        <a href="https://www.accessmap.io/about">
                            About
                        </a>
                    </li>
                    <li>
                        <a href="admin">
                            Admin Console
                        </a>
                    </li>
                    <li>
                        <a href="http://www.creative-tim.com/license">
                            Licenses
                        </a>
                    </li>
                </ul>
            </nav>
            <div class="copyright pull-right">
                &copy; 2016, made with <i class="material-icons">favorite</i> by Creative Tim for a better web.
            </div>
        </div>
    </footer>
</div>

<!-- Sart Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    <i class="material-icons">clear</i>
                </button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live
                    the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large
                    language ocean. A small river named Duden flows by their place and supplies it with the necessary
                    regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.
                    Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic
                    life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the
                    far World of Grammar.
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-simple">Nice Button</button>
                <button type="button" class="btn btn-danger btn-simple" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!--  End Modal -->


</body>
<!--   Core JS Files   -->
<script src="welcome-content/jquery.min.js" type="text/javascript"></script>
<script src="welcome-content/bootstrap.min.js" type="text/javascript"></script>
<script src="welcome-content/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="welcome-content/nouislider.min.js" type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="welcome-content/bootstrap-datepicker.js" type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="welcome-content/material-kit.js" type="text/javascript"></script>

<script type="text/javascript">

    $().ready(function () {
        // the body of this function is in assets/material-kit.js
        materialKit.initSliders();
        window_width = $(window).width();

        if (window_width >= 992) {
            big_image = $('.wrapper > .header');

            $(window).on('scroll', materialKitDemo.checkScrollForParallax);
        }

    });
</script>
</html>
