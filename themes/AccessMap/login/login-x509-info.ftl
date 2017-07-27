<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
    ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
    ${msg("loginTitleHtml",(realm.displayNameHtml!''))}
    <#elseif section = "form">
    <form id="kc-x509-login-info" class="form" action="${url.loginAction}" method="post">
        <div class="content">
            <div class="form-group">
                <label for="certificate_subjectDN" class="${properties.kcLabelClass!}">X509 client certificate: </label>
                <#if subjectDN??>
                    <label id="certificate_subjectDN" class="${properties.kcLabelClass!}">${(subjectDN!"")?html}</label>
                <#else>
                    <label id="certificate_subjectDN" class="${properties.kcLabelClass!}">[No Certificate]</label>
                </#if>
            </div>

            <div class="form-group">
                <#if isUserEnabled>
                    <label for="username" class="${properties.kcLabelClass!}">You will be logged in as:</label>
                    <label id="username" class="${properties.kcLabelClass!}">${(username!'')?html}</label>
                </#if>
            </div>

            <div class="form-group text-center">
                <button class="btn btn-primary" name="login" id="kc-login" type="submit">Continue</button>
                <#if isUserEnabled>
                    <button class="btn btn-default" name="cancel" id="kc-cancel" type="submit">Ignore</button>
                </#if>
            </div>

            <div class="footer text-center">
                <span id="counter">The form will be submitted in -- seconds</span>
            </div>
        </div>
    </form>

    <script>

        var n = 10;

        function autoSubmitCountdown() {
            var c = n;
            setInterval(function () {
                if (c >= 0) {
                    document.getElementById("counter").textContent = "The form will be submitted in " + c + " seconds";
                }
                if (c == 0) {
                    document.forms[0].submit();
                }
                c--;
            }, 1000);
        }

        // Start
        autoSubmitCountdown();

    </script>
    </#if>

</@layout.registrationLayout>
