<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")}
    <#elseif section = "form">
        <form class="form" id="kc-passwd-update-form" action="${url.loginAction}" method="post">
            <div class="header header-primary text-center">
                <h4>Update Password</h4>
            </div>
            <div class="content">
                <input type="text" readonly value="this is not a login form" style="display: none;">
                <input type="password" readonly value="this is not a login form" style="display: none;">

                <div class="form-group label-floating">
                    <label for="password-new" class="control-label">${msg("passwordNew")}</label>
                    <input type="password" id="password-new" name="password-new" class="form-control" autofocus autocomplete="off"/>
                </div>

                <div class="form-group label-floating">
                    <label for="password-confirm" class="control-label">${msg("passwordConfirm")}</label>
                    <input type="password" id="password-confirm" name="password-confirm" class="form-control" autocomplete="off" />
                </div>

            </div>
            <div class="footer text-center">
                <button class="btn btn-primary" type="submit">${msg("doSubmit")}</button>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>