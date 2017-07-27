<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="${url.resourcesPath}/img/apple-icon.png">
	<link rel="icon" type="image/png" href="${url.resourcesPath}/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title><#nested "title"></title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="robots" content="noindex, nofollow">

	<#if properties.meta?has_content>
		<#list properties.meta?split(' ') as meta>
			<meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
		</#list>
	</#if>

	<#if properties.styles?has_content>
		<#list properties.styles?split(' ') as style>
			<link href="${url.resourcesPath}/${style}" rel="stylesheet" />
		</#list>
	</#if>
	<#if properties.scripts?has_content>
		<#list properties.scripts?split(' ') as script>
			<script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
		</#list>
	</#if>
	<#if scripts??>
		<#list scripts as script>
			<script src="${script}" type="text/javascript"></script>
		</#list>
	</#if>

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

</head>

<body class="signup-page">

	<#if displayMessage && message?has_content>
		<#if message.type = 'success'><div class="alert alert-success"></#if>
		<#if message.type = 'warning'><div class="alert alert-warning"></#if>
		<#if message.type = 'error'><div class="alert alert-danger"></#if>
		<#if message.type = 'info'><div class="alert alert-info"></#if>
			<div class="container">
				<div class="alert-icon">
					<#if message.type = 'success'><i class="material-icons">check</i></#if>
					<#if message.type = 'warning'><i class="material-icons">warning</i></#if>
					<#if message.type = 'error'><i class="material-icons">error_outline</i></#if>
					<#if message.type = 'info'><i class="material-icons">info_outline</i></#if>
				</div>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true"><i class="material-icons">clear</i></span>
				</button>
				${message.summary}
			</div>
		</div>
	</#if>

	<nav class="navbar navbar-transparent navbar-absolute">
    	<div class="container">
        	<!-- Brand and toggle get grouped for better mobile display -->
        	<div class="navbar-header">
        		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
            		<span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
        		</button>
        		<a class="navbar-brand"><#nested "title"></a>
        	</div>

        	<div class="collapse navbar-collapse" id="navigation">
        		<ul class="nav navbar-nav navbar-right">
    				<li>
						<a href="/">
							<i class="material-icons">home</i> Home
						</a>
    				</li>
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
        		</ul>
        	</div>
    	</div>
    </nav>

    <div class="wrapper">
		<div class="header header-filter" style="background-image: url('${url.resourcesPath}/img/city.jpg'); background-size: cover; background-position: top center;">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
						<div class="card card-signup">
							<#nested "form">

							<#if displayInfo>
								<#nested "info">
							</#if>
						</div>
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
						</ul>
		            </nav>
		            <div class="copyright pull-right">
		                &copy; 2017 AccessMap
		            </div>
		        </div>
		    </footer>

		</div>

    </div>


</body>

</html>
</#macro>