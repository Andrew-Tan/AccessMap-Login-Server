<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("loginTitle",realm.displayName)}
    <#elseif section = "header">
        ${msg("loginTitleHtml",realm.displayNameHtml)}
    <#elseif section = "form">
        <form id="kc-totp-login-form" class="form" action="${url.loginAction}" method="post">
            <div class="content">
                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">phonelink_lock</i>
                    </span>
                    <div class="form-group label-floating">
                        <label for="totp" class="control-label">${msg("loginTotpOneTime")}</label>
                        <input id="totp" name="totp" autocomplete="off" type="text" class="form-control" autofocus/>
                    </div>
                </div>
            </div>

            <div class="footer text-center">
                <button class="btn btn-default" name="cancel" id="kc-cancel" type="submit">${msg("doCancel")}</button>
                <button class="btn btn-primary" name="login" id="kc-login" type="submit">${msg("doLogIn")}</button>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>