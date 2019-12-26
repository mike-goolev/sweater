<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="mb-1"
Create new user
${message!}
<@l.login "/registration" true/>
</@c.page>