<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("emailVerifyTitle")}
    <#elseif section = "header">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
    <div class="form">
        <div class="content">
            <div class="form-group">
                <p class="text-primary">
                ${msg("emailVerifyInstruction1")}
                </p>
            </div>

            <div class="form-group">
                <p class="text-primary">
                ${msg("emailVerifyInstruction2")} <a href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
                </p>
            </div>
        </div>
    </div>
    </#if>
</@layout.registrationLayout>