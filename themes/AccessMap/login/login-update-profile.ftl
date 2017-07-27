<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("loginProfileTitle")}
    <#elseif section = "header">
        ${msg("loginProfileTitle")}
    <#elseif section = "form">
        <form class="form" id="kc-update-profile-form" action="${url.loginAction}" method="post">
            <div class="header header-primary text-center">
                <h4>Update Profile</h4>
            </div>
            <div class="content">
                <#if user.editUsernameAllowed>
                    <div class="form-group label-floating ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                        <label for="username" class="control-label">${msg("username")}</label>
                        <input type="text" id="username" name="username" value="${(user.username!'')?html}" class="form-control"/>
                    </div>
                </#if>

                <div class="form-group label-floating ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                    <label for="email" class="control-label">${msg("email")}</label>
                    <input type="text" id="email" name="email" value="${(user.email!'')?html}" class="form-control" />
                </div>

                <div class="form-group label-floating ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                    <label for="firstName" class="control-label">${msg("firstName")}</label>
                    <input type="text" id="firstName" name="firstName" value="${(user.firstName!'')?html}" class="form-control" />
                </div>

                <div class="form-group label-floating ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                    <label for="lastName" class="control-label">${msg("lastName")}</label>
                    <input type="text" id="lastName" name="lastName" value="${(user.lastName!'')?html}" class="form-control" />
                </div>

            </div>
            <div class="footer text-center">
                <button class="btn btn-primary" type="submit">${msg("doSubmit")}</button>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>