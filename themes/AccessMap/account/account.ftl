<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("editAccountHtmlTitle")}</h2>
        </div>
        <div class="col-md-2 subtitle">
            <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>
        </div>
    </div>






<form class="form" action="${url.accountUrl}" method="post">
    <div class="content">

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker?html}">

        <#if !realm.registrationEmailAsUsername>
            <div class="form-group label-floating ${messagesPerField.printIfExists('username','has-error')}">
                <label for="username" class="control-label">
                    ${msg("username")}
                    <#if realm.editUsernameAllowed><span class="required">*</span></#if>
                </label>

                <input type="text" class="form-control" id="username" name="username"
                       <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')?html}"/>
            </div>
        </#if>

        <div class="form-group label-floating ${messagesPerField.printIfExists('email','has-error')}">
            <label for="email" class="control-label">
                ${msg("email")}
                <span class="required">*</span>
            </label>

            <input type="text" class="form-control" id="email" name="email" value="${(account.email!'')?html}"/>
        </div>

        <div class="form-group label-floating ${messagesPerField.printIfExists('firstName','has-error')}">
            <label for="firstName" class="control-label">
                ${msg("firstName")}
                <span class="required">*</span>
            </label>

            <input type="text" class="form-control" id="firstName" name="firstName" value="${(account.firstName!'')?html}"/>
        </div>

        <div class="form-group label-floating ${messagesPerField.printIfExists('lastName','has-error')}">
            <label for="lastName" class="control-label">
                ${msg("lastName")}
                <span class="required">*</span>
            </label>

            <input type="text" class="form-control" id="lastName" name="lastName" value="${(account.lastName!'')?html}"/>
        </div>

    </div>
    <div class="footer text-center">
        <#if url.referrerURI??>
            <a href="${url.referrerURI}" class="btn btn-simple btn-primary btn-lg">${msg("backToApplication")}</a>
        </#if>
        <button type="submit" class="btn btn-default btn-lg" name="submitAction" value="Cancel">${msg("doCancel")}</button>
        <button type="submit" class="btn btn-primary btn-lg" name="submitAction" value="Save">${msg("doSave")}</button>
    </div>
</form>
</@layout.mainLayout>