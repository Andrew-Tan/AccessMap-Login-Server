<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
    ${message.summary}
    <#elseif section = "header">
    ${message.summary}
    <#elseif section = "form">
    <div class="form">
        <div class="content">
            <div id="kc-info-message" class="form-group text-center">
                <p class="text-primary">${message.summary}</p>
                <#if skipLink??>
                <#else>
                    <#if pageRedirectUri??>
                        <p><a href="${pageRedirectUri}">${msg("backToApplication")}</a></p>
                    <#elseif client.baseUrl??>
                        <p><a href="${client.baseUrl}">${msg("backToApplication")}</a></p>
                    </#if>
                </#if>
            </div>
        </div>
    </div>
    </#if>
</@layout.registrationLayout>