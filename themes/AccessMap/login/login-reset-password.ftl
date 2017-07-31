<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "form">
        <form class="form" id="kc-reset-password-form" action="${url.loginAction}" method="post">
            <div class="header header-primary text-center">
                <h4>Reset Password</h4>
            </div>
            <div class="content">

                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">person</i>
                    </span>
                    <div class="form-group label-floating">
                        <label for="username" class="control-label">
                            <#if !realm.loginWithEmailAllowed>
                            ${msg("username")}
                        <#elseif !realm.registrationEmailAsUsername>
                            ${msg("usernameOrEmail")}
                            <#else>
                            ${msg("email")}
                            </#if>
                        </label>
                        <input type="text" id="username" name="username" class="form-control" autofocus/>
                    </div>
                </div>

            </div>
            <div class="footer text-center">
                <a href="${url.loginUrl}">
                    <button class="btn btn-default" type="button">${msg("backToLogin")}</button>
                </a>

                <button class="btn btn-primary" type="submit">${msg("doSubmit")}</button>
            </div>
        </form>
    <#elseif section = "info">
        <div class="alert alert-info">
            <div class="container-fluid">
                <div class="alert-icon col-xs-2">
                    <i class="material-icons">info_outline</i>
                </div>
                <div class="col-xs-9">${msg("emailInstruction")}</div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
