<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("emailVerifyTitle")}
    <#elseif section = "header">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
        <p class="text-primary">
            ${msg("emailVerifyInstruction1")}
        </p>
        <p class="text-primary">
            ${msg("emailVerifyInstruction2")} <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
        </p>
    </#if>
</@layout.registrationLayout>