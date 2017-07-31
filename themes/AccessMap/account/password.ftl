<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>

<div class="row">
    <div class="col-md-10">
        <h2>${msg("changePasswordHtmlTitle")}</h2>
    </div>
    <div class="col-md-2 subtitle">
        <span class="subtitle">${msg("allFieldsRequired")}</span>
    </div>
</div>

<form action="${url.passwordUrl}" class="form" method="post">
    <input type="text" readonly value="this is not a login form" style="display: none;">
    <input type="password" readonly value="this is not a login form" style="display: none;">

    <#if password.passwordSet>
        <div class="input-group">
            <span class="input-group-addon">
                <i class="material-icons">lock_open</i>
            </span>
            <div class="form-group label-floating">
                <label for="password" class="control-label">${msg("password")}</label>
                <input type="password" class="form-control" id="password" name="password" autocomplete="off"/>
            </div>
        </div>

    </#if>

    <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker?html}">

    <div class="input-group">
        <span class="input-group-addon">
            <i class="material-icons">lock_outline</i></span>
        <div class="form-group label-floating">
            <label for="password-new" class="control-label">${msg("passwordNew")}</label>
            <input type="password" class="form-control" id="password-new" name="password-new" autocomplete="off"/>
        </div>
    </div>

    <div class="input-group">
        <span class="input-group-addon">
            <i class="material-icons">lock_outline</i>
        </span>
        <div class="form-group label-floating">
            <label for="password-confirm" class="control-label" class="control-label">${msg("passwordConfirm")}</label>
            <input type="password" class="form-control" id="password-confirm" name="password-confirm" autocomplete="off"/>
        </div>
    </div>



    <div class="footer text-center">
        <button type="submit" class="btn btn-primary btn-lg" name="submitAction" value="Save">${msg("doSave")}</button>
    </div>

</form>

</@layout.mainLayout>