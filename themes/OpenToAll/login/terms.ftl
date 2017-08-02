<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
    ${msg("termsTitle")}
    <#elseif section = "header">
    ${msg("termsTitleHtml")}
    <#elseif section = "form">
    <form class="form" action="${url.loginAction}" method="POST">
        <div class="content">
            <div class="form-group">
            <textarea id="kc-terms-text" class="form-control" rows="15" readonly>
            ${msg("termsText")}
            </textarea>
            </div>
        </div>

        <div class="footer text-center">
            <button class="btn btn-default" name="cancel" id="kc-decline" type="submit">${msg("doDecline")}</button>
            <button class="btn btn-primary" name="accept" id="kc-accept" type="submit">${msg("doAccept")}</button>
        </div>
    </form>
    </#if>
</@layout.registrationLayout>