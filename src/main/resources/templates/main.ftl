<#import "parts/common.ftl" as c>

<@c.page>
    <div>
        <span><a href="/user">User list</a></span>
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
    <div>Filter</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter!}">
        <button type="submit">Search</button>
    </form>
    <div>List of messages:</div>
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