<html>
<head>
    <meta name="layout" content="headerAndFooter"/>
    <title>ToDo</title>
</head>
<body>
<g:form controller ="home" action="save">
<div class="form-group">
    <h1>To-Do <small>List</small>
        <a href="completed.gsp" class="btn btn btn-primary">Completed Task</a>
    </h1>
        <input type="text" class="form-control" placeholder="Your Task" name="content">
</div>
        <button type="submit" class="btn btn btn-primary">Add</button>
</g:form>
<g:if test="${tasksList}">
    <table class="table table-striped">
        <g:each in="${tasksList}" var="show">
            <tr>
            <g:if test="${show.dateCompleted==null}">
                <td>${show.content} </td>
                <td>
                    <g:link controller="home" action="completed" class="btn btn btn-primary" id="${show.id}">Done</g:link>
            </g:if>
            </tr>
        </g:each>
    </table>
</g:if>
</body>
</html>