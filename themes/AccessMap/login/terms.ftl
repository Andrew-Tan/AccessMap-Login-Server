<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
    ${msg("termsTitle")}
    <#elseif section = "header">
    ${msg("termsTitleHtml")}
    <#elseif section = "form">
    <form class="form" action="${url.loginAction}" method="POST">
        <div class="form-group">
            <textarea id="kc-terms-text" class="form-control" placeholder="Here can be your nice text" rows="15" readonly>
                ${msg("termsText")}
            </textarea>
        </div>

        <div class="footer text-center">
            <button class="btn btn-default" name="cancel" id="kc-decline" type="submit">${msg("doDecline")}</button>
            <button class="btn btn-primary" name="accept" id="kc-accept" type="submit">${msg("doAccept")}</button>
        </div>
    </form>
    </#if>
</@layout.registrationLayout>