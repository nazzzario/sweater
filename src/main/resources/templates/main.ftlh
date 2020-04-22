<#import "parts/common.ftlh" as c>
<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input  type="text" name="filter" value="${filter?ifExists}" class="form-control"  placeholder="Search by tag"/>
         <button type="submit" class="btn btn-primary ml-2">Search</button>
        </form>
    </div>
</div>

<p>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new Message
    </a>

<div  class="collapse" id="collapseExample">
    <div class="form-group ">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input class="form-control"  type="text" name="text" placeholder="Please enter text"/>
            </div>
            <div class="form-group">
                <input class="form-control"  type="text" name="tag" placeholder="Please enter tag"/>
            </div>
            <div class="custom-file">
                <input class="form-control"  type="file" name="file" id="customFile">
                <label class="custom-file-label" for="customFile">Choose File</label>
            </div>
                <input class="form-control"  type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="btn btn-primary mt-3"  type="submit">Add</button>
        </form>
    </div>
</div>
<div class="card-columns">
<#list messages as m>
<div class="card my-3">
    <div class="card-img-top">
        <#if m.filename??>
        <img src="/img/${m.filename}">
    </#if>
</div>
<div class="m-2">
<span>${m.text}</span>
<i>${m.tag}</i>
</div>
<div class="card-footer text-muted">
    ${m.authorName}
</div>

</div>
<#else>
No message
</#list>
</div>


</@c.page>