<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <asset:stylesheet href="book.css"></asset:stylesheet>
</head>

<body>
<ul>
    <li><a href="${createLink(controller:'authentication',action: 'logout')}">Logout</a></li>
    <li><a href="${createLink(controller:'book', action: 'create')}">Add New Book</a></li>
</ul>

<div class="wrap">
    <div class="search">
        <input id="myInput" type="text" class="searchTerm" placeholder="What are you looking for?">
        <button type="submit" class="searchButton">
            <i class="fa fa-search"></i>
        </button>
    </div>
</div>

<br><br>

<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
            <div class="box-body">
                <g:render template="inner_list"/>
            </div>

        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>

</body>
</html>

