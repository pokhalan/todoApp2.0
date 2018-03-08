<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Completed Task</title>
</head>
<h1>To-Do <small>List</small></h1>
        <input type="text" class="form-control" placeholder="Your Completed Task" name="content">
</div>
<body>
<g:if test="${tasksList}">
    <table class="table table-striped">
        <g:each in="${tasksList}" var="show">
            <tr>
                <g:if test="${show.dateCompleted!=null}">
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