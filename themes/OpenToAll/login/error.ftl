<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        ${msg("errorTitle")}
    <#elseif section = "header">
        ${msg("errorTitleHtml")}
    <#elseif section = "form">
    <div class="form">
        <div class="content">
            <div id="kc-error-message" class="form-group">
                <p class="text-primary">${message.summary}</p>
                <#if client?? && client.baseUrl?has_content>
                    <p><a id="backToApplication" href="${client.baseUrl}">${msg("backToApplication")}</a></p>
                </#if>
            </div>
        </div>
    </div>
    </#if>
</@layout.registrationLayout>