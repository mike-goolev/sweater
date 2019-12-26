<#import "parts/common.ftl" as c>

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter!}" placeholder="Search by tag">
                <button type="submit" class="btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>

    <div>
        <form method="post" action="/main" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="Type message">
            <input type="text" name="tag" placeholder="Tag">
            <input type="file" name="file">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Add</button>
        </form>
    </div>

    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
        <div>
            <#if message.filename??> <#-- ?? makes it boolean type -->
                <img src="/img/${message.filename}"
            </#if>
        </div>
    <#else>
        No message
    </#list>
</@c.page>