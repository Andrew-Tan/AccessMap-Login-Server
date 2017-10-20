<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.displayNameHtml!''))}
    <#elseif section = "header-line">
        <#if realm.password && social.providers??>
        <div id="kc-social-providers" class="social-line">
            <div class="row">
                <#list social.providers as p>
                    <div class="col-md-12">
                        <a href="${p.loginUrl}" class="btn btn-simple btn-sm" title="${p.displayName}">
                            <i class="mdi mdi-${p.alias} mdi-light mdi-24px"></i> Login with ${p.displayName}
                        </a>
                    </div>
                </#list>
            </div>
        </div>
        </#if>
    <#elseif section = "form">
        <#if realm.password>
        <form class="form" id="kc-form-login" action="${url.loginAction}" method="post">
            <div class="content">

                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">person</i>
                    </span>
                    <div class="form-group label-floating">
                        <label class="control-label">
                            <#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>
                        </label>
                        <#if usernameEditDisabled??>
                            <input id="username" class="form-control" name="username" value="${(login.username!'')?html}"
                                   type="text" disabled/>
                        <#else>
                            <input id="username" class="form-control" name="username" value="${(login.username!'')?html}"
                                   type="text" autofocus autocomplete="off"/>
                        </#if>
                    </div>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">lock_outline</i>
                    </span>
                    <div class="form-group label-floating">
                        <label class="control-label">${msg("password")}</label>
                        <input id="password" class="form-control" name="password" type="password" autocomplete="off" />
                    </div>
                </div>

                <#if realm.rememberMe && !usernameEditDisabled??>
                    <div class="checkbox">
                        <label>
                            <#if login.rememberMe??>
                                <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
                            <#else>
                                <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
                            </#if>
                        </label>
                    </div>
                </#if>

            </div>
            <div class="footer text-center">
                <button class="btn btn-primary" name="login" id="kc-login" type="submit">${msg("doLogIn")}</button>
            </div>
        </form>
        </#if>
    <#elseif section = "info" >
        <#if realm.resetPasswordAllowed || (realm.password && realm.registrationAllowed && !usernameEditDisabled??)>
            <div class="btn-group-sm text-center">
                <#if realm.resetPasswordAllowed>
                    <a href="${url.loginResetCredentialsUrl}">
                        <button class="btn btn-simple btn-sm" type="button">
                        ${msg("doForgotPassword")}
                        </button>
                    </a>
                </#if>

                <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
                    <a href="${url.registrationUrl}">
                        <button class="btn btn-simple btn-sm" type="button">
                        ${msg("noAccount")} ${msg("doRegister")}
                        </button>
                    </a>
                </#if>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
