<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("registerWithTitleHtml",(realm.displayNameHtml!''))}
    <#elseif section = "form">
        <form class="form" id="kc-register-form" action="${url.registrationAction}" method="post">
            <div class="header header-primary text-center">
                <h4>Register</h4>
            </div>
            <div class="content">
                <input type="text" readonly value="this is not a login form" style="display: none;">
                <input type="password" readonly value="this is not a login form" style="display: none;">

                <#if !realm.registrationEmailAsUsername>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-group label-floating ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                            <label for="username" class="control-label">${msg("username")}</label>
                            <input type="text" id="username" class="form-control" name="username"
                                   value="${(register.formData.username!'')?html}"/>
                        </div>
                    </div>
                </#if>

                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">face</i>
                    </span>
                    <div class="form-group label-floating ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                        <label for="firstName" class="control-label">${msg("firstName")}</label>
                        <input type="text" id="firstName" class="form-control" name="firstName" value="${(register.formData.firstName!'')?html}" />
                    </div>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">face</i>
                    </span>
                    <div class="form-group label-floating ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                        <label for="lastName" class="control-label">${msg("lastName")}</label>
                        <input type="text" id="lastName" class="form-control" name="lastName" value="${(register.formData.lastName!'')?html}" />
                    </div>
                </div>

                <div class="input-group">
                    <span class="input-group-addon">
                        <i class="material-icons">email</i>
                    </span>
                    <div class="form-group label-floating ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                        <label for="email" class="control-label">${msg("email")}</label>
                        <input type="text" id="email" class="form-control" name="email" value="${(register.formData.email!'')?html}" />
                    </div>
                </div>

                <#if passwordRequired>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-group label-floating ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">
                            <label for="password" class="control-label">${msg("password")}</label>
                            <input type="password" id="password" class="form-control" name="password" />
                        </div>
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock_outline</i>
                        </span>
                        <div class="form-group label-floating ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                            <label for="password-confirm" class="control-label">${msg("passwordConfirm")}</label>
                            <input type="password" id="password-confirm" class="form-control" name="password-confirm" />
                        </div>
                    </div>
                </#if>

                <#if recaptchaRequired??>
                    <div class="form-group text-center">
                        <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                    </div>
                </#if>
            </div>
            <div class="footer text-center">
                <a href="${url.loginUrl}">
                    <button class="btn btn-default" type="button">${msg("backToLogin")}</button>
                </a>

                <button class="btn btn-primary" type="submit">${msg("doRegister")}</button>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>