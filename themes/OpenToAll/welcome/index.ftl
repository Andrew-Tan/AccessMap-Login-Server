<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="welcome-content/apple-icon.png">
    <link rel="icon" type="image/png" href="welcome-content/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>OpenToAll Account</title>

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
                    <a href="realms/OpenToAll/account">
                        <i class="material-icons">person</i> Account
                    </a>
                </li>
                <li>
                    <a rel="tooltip" title="Visit our Github" data-placement="bottom"
                       href="https://github.com/Open-to-All" target="_blank"
                       class="btn btn-white btn-simple btn-just-icon">
                        <i class="fa fa-github"></i>
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
                        <h1>OpenToAll Account</h1>
                        <h3>Control, protect, and secure your account, all in one place</h3>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <#if successMessage?has_content || errorMessage?has_content || bootstrap>
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
    </#if>

    <footer class="footer">
        <div class="container">
            <nav class="pull-left">
                <ul>
                    <li>
                        <a href="https://open-to-all.com">
                            OpenToAll
                        </a>
                    </li>
                    <li>
                        <a href="admin">
                            Admin Console
                        </a>
                    </li>
                </ul>
            </nav>
            <div class="copyright pull-right">
                &copy; 2017 OpenToAll
            </div>
        </div>
    </footer>
</div>

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

</html>
