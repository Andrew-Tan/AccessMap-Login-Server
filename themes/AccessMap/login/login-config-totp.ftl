<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("loginTotpTitle")}
    <#elseif section = "header">
        ${msg("loginTotpTitle")}
    <#elseif section = "form">
<ol id="kc-totp-settings">
    <li>
        <p>${msg("loginTotpStep1")}</p>
        </li>
    <li>
        <p>${msg("loginTotpStep2")}</p>
        <img id="kc-totp-secret-qr-code" src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"><br/>
        <span class="code">${totp.totpSecretEncoded}</span>
        </li>
    <li>
        <p>${msg("loginTotpStep3")}</p>
        </li>
    </ol>
    <form action="${url.loginAction}" class="form" id="kc-totp-settings-form" method="post">

        <div class="input-group label-floating">
            <label class="control-label"></label>
            <input type="text" id="totp" name="totp" autocomplete="off" class="form-control" />
            <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />
        </div>

        <button class="btn btn-primary" name="login" id="kc-login" type="submit" value="${msg("doSubmit")}"></button>
    </form>
    </#if>
</@layout.registrationLayout>
