<#macro mainLayout active bodyClass>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="robots" content="noindex, nofollow">
    <link rel="apple-touch-icon" sizes="76x76" href="${url.resourcesPath}/img/apple-icon.png">
    <link rel="icon" type="image/png" href="${url.resourcesPath}/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>${msg("accountManagementTitle")}</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"/>

    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet"/>
        </#list>
    </#if>
    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script type="text/javascript" src="${url.resourcesPath}/${script}"></script>
        </#list>
    </#if>
</head>

<body class="profile-page">
<nav class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">OpenToAll Account</a>
        </div>

        <div class="collapse navbar-collapse" id="navigation">
            <ul class="nav navbar-nav navbar-right">
                <#if realm.internationalizationEnabled>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="material-icons">language</i>
                        ${locale.current}
                            <i class="material-icons">arrow_drop_down</i>
                        </a>
                        <ul class="dropdown-menu">
                            <#list locale.supported as l>
                                <li><a href="${l.url}">${l.label}</a></li>
                            </#list>
                        </ul>
                    </li>
                </#if>
                <#if referrer?has_content && referrer.url?has_content>
                    <li>
                        <a id="referrer" href="${referrer.url}">
                            <i class="material-icons">arrow_back</i> ${msg("backTo",referrer.name)}
                        </a>
                    </li>
                </#if>
                <li>
                    <a href="${url.logoutUrl}">
                        <i class="material-icons">exit_to_app</i> ${msg("doSignOut")}
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="wrapper">

    <div class="header header-filter"
         style="background-image: url('${url.resourcesPath}/img/city.jpg');"></div>


    <div class="main main-raised">
        <div class="profile-content">
            <div class="container">
                <div class="row">
                    <div class="profile">
                        <div class="name">
                            <h3 class="title">${(account.firstName!'')?html} ${(account.lastName!'')?html}</h3>
                            <div class="text-center">
                                <p>${(account.email!'')?html}</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 col-md-offset-0">

                        <!-- Menu Start -->
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                                            data-target="#example-navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="#">Features</a>
                                </div>

                                <div class="collapse navbar-collapse" id="example-navbar">
                                    <ul class="nav navbar-nav">
                                        <li class="<#if active=='account'>active</#if>">
                                            <a href="${url.accountUrl}">
                                                <i class="material-icons">person</i>
                                            ${msg("account")}
                                            </a>
                                        </li>
                                        <#if features.passwordUpdateSupported>
                                            <li class="<#if active=='password'>active</#if>">
                                                <a href="${url.passwordUrl}">
                                                    <i class="material-icons">lock</i>
                                                ${msg("password")}
                                                </a>
                                            </li>
                                        </#if>
                                        <li class="<#if active=='totp'>active</#if>">
                                            <a href="${url.totpUrl}">
                                                <i class="material-icons">vpn_lock</i>
                                            ${msg("authenticator")}
                                            </a>
                                        </li>
                                        <#if features.identityFederation>
                                            <li class="<#if active=='social'>active</#if>">
                                                <a href="${url.socialUrl}">
                                                    <i class="material-icons">people</i>
                                                ${msg("federatedIdentity")}
                                                </a>
                                            </li>
                                        </#if>
                                        <li class="<#if active=='sessions'>active</#if>">
                                            <a href="${url.sessionsUrl}">
                                                <i class="material-icons">schedule</i>
                                            ${msg("sessions")}
                                            </a>
                                        </li>
                                        <li class="<#if active=='applications'>active</#if>">
                                            <a href="${url.applicationsUrl}">
                                                <i class="material-icons">apps</i>
                                            ${msg("applications")}
                                            </a>
                                        </li>
                                        <#if features.log>
                                            <li class="<#if active=='log'>active</#if>">
                                                <a href="${url.logUrl}">
                                                    <i class="material-icons">event</i>
                                                ${msg("log")}
                                                </a>
                                            </li>
                                        </#if>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <!-- Menu End -->


                        <div class="tab-content">
                            <#if message?has_content>
                                <#if message.type = 'success'>
                                <div class="alert alert-success"></#if>
                                <#if message.type = 'error'>
                                <div class="alert alert-danger"></#if>
                                <div class="container-fluid">
                                    <div class="alert-icon">
                                        <#if message.type = 'success'>
                                            <i class="material-icons">check</i>
                                        </#if>
                                        <#if message.type = 'error'>
                                            <i class="material-icons">error_outline</i>
                                        </#if>
                                    </div>
                                    <button type="button" class="close" data-dismiss="alert"
                                            aria-label="Close">
                                        <span aria-hidden="true"><i class="material-icons">clear</i></span>
                                    </button>
                                ${message.summary}
                                </div>
                            </div>
                            </#if>

                            <#nested "content">
                        </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="https://open-to-all.com">
                                OpenToAll
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright pull-right">
                    &copy; 2017 OpenToAll
                </div>
            </div>
        </footer>
</body>
</html>
</#macro>