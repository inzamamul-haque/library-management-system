<!DOCTYPE html>
<html >
<head>

    <title>Book Store</title>

    <asset:stylesheet href="book.css"></asset:stylesheet>


</head>

<body>
<div class="sign">
    <h2>Book Store</h2>

<fieldset>
    <g:form controller="book" action="save">
        Book Name:<input type="text" name="name" placeholder="Name" />
        Book Author:<input  type="author" name="author" placeholder="Author" />
        Publication Date:<input  type="date" name="date" placeholder="Publication Date" />
        Price:<input type="text" name="price" placeholder="Price" />
        ISBN:<input type="text" name="isbn" placeholder="ISBN" />
        </fieldset>
        <g:submitButton name="save" value="Save" />

        <input type="reset" name="Reset">
    </g:form>
</div>

</body>
</html>
