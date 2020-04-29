<#import "parts/common.ftlh" as c>
<@c.page>
User Editor
<form action="/user" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Change username: </label>
            <div class="col-sm-3">
        <input type="text" value="${user.username}" name="username" class="form-control"/>
            </div>
    </div>
    <#list roles as role>
        <div>
            <label>
                <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked","")} />
                    ${role}
            </label>
        </div>
    </#list>
<input type="hidden" value="${user.id}" name="userId">
<input type="hidden" name="_csrf" value="${_csrf.token}"/>
<div>
<button type="submit" class="btn btn-primary">Save</button>
</div>
<div>
    <button type="submit" class="btn btn-primary mt-2">Delete user</button>
</div>
</form>
</@c.page>
