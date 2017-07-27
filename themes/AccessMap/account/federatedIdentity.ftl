<#import "template.ftl" as layout>
<@layout.mainLayout active='social' bodyClass='social'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("federatedIdentitiesHtmlTitle")}</h2>
        </div>
    </div>

    <form action="${url.passwordUrl}" class="form" method="post">

        <table class="table">
            <thead>
            <tr>
                <th>Provider</th>
                <th>Username</th>
                <th class="text-right">Actions</th>
            </tr>
            </thead>
            <tbody>
            <#list federatedIdentity.identities as identity>
            <tr>
                <td>${identity.displayName!}</td>
                <td>${identity.userName!}</td>
                <td class="td-actions text-right">
                    <#if identity.connected>
                        <#if federatedIdentity.removeLinkPossible>
                            <a href="${identity.actionUrl}" type="submit" id="remove-${identity.providerId!}">
                                <button type="button" rel="tooltip" title="${msg("doRemove")}"
                                        class="btn btn-danger btn-simple btn-xs">
                                    <i class="fa fa-times"></i>
                                </button>
                            </a>
                        </#if>
                    <#else>
                        <a href="${identity.actionUrl}" type="submit" id="add-${identity.providerId!}">
                            <button type="button" rel="tooltip" title="${msg("doAdd")}"
                                    class="btn btn-success btn-simple btn-xs">
                                <i class="fa fa-plus"></i>
                            </button>
                        </a>
                    </#if>
                </td>
            </tr>
            </#list>
            </tbody>
        </table>

    </form>

</@layout.mainLayout>