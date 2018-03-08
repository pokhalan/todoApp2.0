<html>
<head>
<meta name="layout" content="headerAndFooter"/>
    <title>Completed Task</title>
</head>
<h1>To-Do <small>List</small></h1>
</div>
<body>
<g:if test="${tasksList}">
    <table class="table table-striped">
        <tr>
            <td>Content</td>
            <td>Date completed</td>
        </tr>
        <g:each in="${tasksList}" var="show">
            <g:if test="${show.dateCompleted != null}">
                <tr>
                        <td>${show.content} </td>
                <td>${show.dateCompleted}</td>
            </g:if>
            </tr>
        </g:each>
    </table>
</g:if>
</body>
</html>