<#macro login path isRegistererForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">User Name : </label>
            <div class="col-sm-6">
                <input type="text" name="username" class="form-control" placeholder="User Name"/>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <#if !isRegistererForm><a href="/registration">Create new user</a></#if>
        <button type="submit" class="btn btn-primary"><#if isRegistererForm>Create<#else>Sign In</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>