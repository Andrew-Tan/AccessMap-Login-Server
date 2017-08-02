<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        <#if code.success>
            ${msg("codeSuccessTitle")}
        <#else>
            ${msg("codeErrorTitle", code.error)}
        </#if>
    <#elseif section = "form">
    <div class="form">
        <div class="content">
            <div id="kc-code" class="form-group text-center">
                <#if code.success>
                    <p class="text-primary">${msg("copyCodeInstruction")}</p>
                    <input id="code" class="btn-primary" value="${code.code}"/>
                <#else>
                    <p id="error" class="text-primary">${code.error}</p>
                </#if>
            </div>
        </div>
    </div>
    </#if>
</@layout.registrationLayout>
