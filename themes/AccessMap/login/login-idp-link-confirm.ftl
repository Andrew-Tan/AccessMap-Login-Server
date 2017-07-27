<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("confirmLinkIdpTitle")}
    <#elseif section = "header">
         ${msg("confirmLinkIdpTitle")}
    <#elseif section = "form">
        <form id="kc-register-form" class="form" action="${url.loginAction}" method="post">
            <div class="content">
                <div class="footer text-center">
                    <button type="submit" class="form-control" name="submitAction" id="updateProfile" value="updateProfile">${msg("confirmLinkIdpReviewProfile")}</button>
                    <button type="submit" class="form-control" name="submitAction" id="linkAccount" value="linkAccount">${msg("confirmLinkIdpContinue", idpAlias)}</button>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>