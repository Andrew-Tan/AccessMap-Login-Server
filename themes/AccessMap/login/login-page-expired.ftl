<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("pageExpiredTitle")}
    <#elseif section = "header">
        ${msg("pageExpiredTitle")}
    <#elseif section = "form">
    <div class="form">
        <div class="content">
            <div class="form-group text-center">
                <p id="instruction1" class="text-primary">
                ${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a> .
                ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a> .
                </p>
            </div>
        </div>
    </div>
    </#if>
</@layout.registrationLayout>