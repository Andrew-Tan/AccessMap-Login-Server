<#import "template.ftl" as layout>
<@layout.mainLayout active='totp' bodyClass='totp'; section>

<h2>${msg("authenticatorTitle")}</h2>

    <#if totp.enabled>

    <table class="table">
        <thead>
        <tr>
            <th>${msg("configureAuthenticators")}</th>
            <th class="text-right">Actions</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${msg("mobile")}</td>
            <td class="td-actions text-right">
                <a id="remove-mobile" href="${url.totpRemoveUrl}">
                    <button type="button" rel="tooltip" title="${msg("doRemove")}"
                            class="btn btn-danger btn-simple btn-xs">
                        <i class="fa fa-times"></i>
                    </button>
                </a>
            </td>
        </tr>
        </tbody>
    </table>

    <#else>
    <ol>
        <li>
            <p>${msg("totpStep1")}</p>
        </li>
        <li>
            <p>${msg("totpStep2")}</p>
            <p><img src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"></p>
            <p><span class="code">${totp.totpSecretEncoded}</span></p>
        </li>
        <li>
            <p>${msg("totpStep3")}</p>
        </li>
    </ol>

    <hr/>

    <form action="${url.totpUrl}" class="form" method="post">
        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker?html}">

        <div class="input-group">
            <span class="input-group-addon">
                <i class="material-icons">phonelink_lock</i>
            </span>
            <div class="form-group label-floating">
                <label for="totp" class="control-label">${msg("authenticatorCode")}</label>
                <input type="text" class="form-control" id="totp" name="totp" autocomplete="off"/>
            </div>
        </div>

        <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}"/>

        <div class="footer text-center">
            <button type="submit" class="btn btn-default btn-lg" name="submitAction"
                    value="Cancel">${msg("doCancel")}</button>
            <button type="submit" class="btn btn-primary btn-lg" name="submitAction"
                    value="Save">${msg("doSave")}</button>
        </div>
    </form>
    </#if>

</@layout.mainLayout>
