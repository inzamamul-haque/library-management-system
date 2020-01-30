<!DOCTYPE html>
<html >
<head>

    <title>SignUp</title>

    <asset:stylesheet href="book.css"></asset:stylesheet>


</head>

<body>
<div class="sign">
    <h2>SignUp</h2>

<fieldset>
    <g:form controller="member" action="save">
        Name:<input type="text" name="name" placeholder="Name" />
        Email:<input  type="email" name="email" placeholder="Email" />
        Address:<input  type="text" name="address" placeholder="Address" />
        Phone No:<input type="text" name="mobile" placeholder="+8801....." />
        Username:<input type="text" name="userName" placeholder="Username" />
        Password:<input type="password" name="password" placeholder="Password" />

        </fieldset>
        <g:submitButton name="save" value="Sign Up" />


        <input type="reset" name="Reset">


    </g:form>
</div>


</body>
</html>

