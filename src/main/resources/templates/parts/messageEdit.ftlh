<p>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Message editor
    </a>
</p>

<div  class="collapse <#if message??>show</#if>" id="collapseExample">
    <div class="form-group ">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group ">
                <input class="form-control ${(textError??)?string('is-invalid','')}"  type="text"
                       name="text" placeholder="Please enter text" value="<#if message??>${message.text}</#if>"/>
                <#if textError??>
                <div class="invalid-feedback">
                    ${textError}
                </div>
            </#if>
    </div>
    <div class="form-group">
        <input class="form-control ${(tagError??)?string('is-invalid','')}"  type="text"
               name="tag" placeholder="Please enter tag" value="<#if message??>${message.tag}</#if>"/>
        <#if tagError??>
        <div class="invalid-feedback">
            ${tagError}
        </div>
    </#if>
</div>
<div class="custom-file">
    <input class="form-control"  type="file" name="file" id="customFile">
    <label class="custom-file-label" for="customFile">Choose File</label>
</div>
<input class="form-control"  type="hidden" name="_csrf" value="${_csrf.token}"/>
<input class="form-control"  type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
<button class="btn btn-primary mt-3"  type="submit">Add</button>
</form>
</div>
</div>