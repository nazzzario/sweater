<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<div>
<@l.logout />
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Please enter text"/>
        <input type="text" name="tag" placeholder="Please enter tag"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Add</button>
    </form>
</div>

<div>Message list</div>
<form method="get" action="/main">
<input type="text" name="filter" value="${filter}"/>
<button type="submit">Find</button>

</form>
<#list messages as m>
<div>
    <b>${m.id}</b>
    <span>${m.text}</span>
    <i>${m.tag}</i>
    <strong>${m.authorName}</strong>
</div>
<#else>
No message
</#list>


</@c.page>