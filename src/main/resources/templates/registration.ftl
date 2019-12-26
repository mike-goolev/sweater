<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
Create new user
${message!}
<@l.login "/registration" true/>
</@c.page>