<#import "parts/common.ftlh" as c>
<@c.page>
List of users
<table class="table">
    <thead class="thead-light">
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Role</th>
        <th scope="col">Email</th>
        <th scope="col">Actions</th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td scope="row">${user.id}</td>
        <td>${user.username}</td>
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
        <td>${user.email?ifExists}</td>
        <td>
            <form action="/user/${user.id}" >
                <input class="btn btn-light btn-sm" type="submit" value="Edit"/>
            </form>
        </td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>