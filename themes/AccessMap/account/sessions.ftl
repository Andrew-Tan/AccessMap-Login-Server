<#import "template.ftl" as layout>
<@layout.mainLayout active='sessions' bodyClass='sessions'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("sessionsHtmlTitle")}</h2>
        </div>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th>${msg("ip")}</th>
            <th>${msg("started")}</th>
            <th>${msg("lastAccess")}</th>
            <th>${msg("expires")}</th>
            <th>${msg("clients")}</th>
        </tr>
        </thead>
        <tbody>
        <#list sessions.sessions as session>
            <tr>
                <td>${session.ipAddress}</td>
                <td>${session.started?datetime}</td>
                <td>${session.lastAccess?datetime}</td>
                <td>${session.expires?datetime}</td>
                <td>
                    <#list session.clients as client>
                        ${client}<br/>
                    </#list>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>

<div class="text-center">
    <a id="logout-all-sessions" href="${url.sessionsLogoutUrl}">
        <button type="button" class="btn btn-danger btn-lg">${msg("doLogOutAllSessions")}</button>
    </a>
</div>


</@layout.mainLayout>
