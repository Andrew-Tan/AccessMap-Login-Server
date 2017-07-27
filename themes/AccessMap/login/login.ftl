<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("loginTitleHtml",(realm.displayNameHtml!''))}
    <#elseif section = "form">
        <#if realm.password>
        <form class="form" id="kc-form-login" action="${url.loginAction}" method="post">
            <div class="header header-primary text-center">
                <h4>Log In</h4>
                <#if realm.password && social.providers??>
                    <div id="kc-social-providers" class="social-line">
                        <#list social.providers as p>
                            <a href="${p.loginUrl}" class="btn btn-simple btn-xs" title="${p.displayName}">
                                <i class="fa fa-${p.alias}"></i> ${p.providerId}
                            </a>
                        </#list>
                    </div>
                </#if>
            </div>
            <div class="content">

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

                <div class="form-group label-floating">
                    <label class="control-label">${msg("password")}</label>
                    <input id="password" class="form-control" name="password" type="password" autocomplete="off" />
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
                <!-- <a href="#pablo" class="btn btn-simple btn-primary btn-lg">Get Started</a> -->
                <button class="btn btn-primary" name="login" id="kc-login" type="submit">${msg("doLogIn")}</button>
            </div>
        </form>
        </#if>
    <#elseif section = "info" >
        <#if realm.resetPasswordAllowed || (realm.password && realm.registrationAllowed && !usernameEditDisabled??)>
            <div class="btn-group-sm">
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
