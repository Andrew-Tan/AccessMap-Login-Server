<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("loginTotpTitle")}
    <#elseif section = "header">
        ${msg("loginTotpTitle")}
    <#elseif section = "form">
    <form action="${url.loginAction}" class="form" id="kc-totp-settings-form" method="post">
        <div class="content">
            <div class="form-group">
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
            </div>

            <div class="form-group label-floating">
                <label class="control-label"></label>
                <input type="text" id="totp" name="totp" autocomplete="off" class="form-control" />
            </div>

            <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />
        </div>


        <div class="footer text-center">
            <button class="btn btn-primary" name="login" id="kc-login" type="submit" value="${msg("doSubmit")}"></button>
        </div>
    </form>
    </#if>
</@layout.registrationLayout>
