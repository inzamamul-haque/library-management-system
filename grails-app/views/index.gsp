<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <asset:stylesheet href="book.css"></asset:stylesheet>

</head>

<body>
%{--<ul>
    <li><a href="${createLink(controller:'member')}">SignUp</a></li>
    <li><a href="${createLink(controller:'authentication')}">Login</a></li>
</ul>--}%


<div class="banner">
    <h1>Library Management System</h1>
</div>

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


%{--<div class="banner-text">
    <g:link controller="book" action="create"
            style="color: gold">Book Store</g:link> <br> <br> <br>
</div>--}%

</body>
</html>

