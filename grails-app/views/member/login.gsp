<!DOCTYPE html>
<html >
<head>

    <title>Login</title>
    <asset:stylesheet href="book.css"></asset:stylesheet>
</head>

<body>
<g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
</g:if>
<div class="login">
    <h2>Log In</h2>
    <g:form controller="authentication" action="authenticate" method="post">
        <fieldset>
            <input type="text" name="userName" placeholder="Username" />
            <input type="password" name="password" placeholder="Password" />
        </fieldset>
        <span class="button">
        <input type="submit" value="Log In" />

        <div class="utilities">
          <a href="#"></a>
          <a href="${createLink(controller:'member')}">Sign Up</a>
  </div>
    </g:form>
</div>


</body>
</html>
