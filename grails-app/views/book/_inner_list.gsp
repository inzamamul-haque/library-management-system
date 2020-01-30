<!DOCTYPE html>
<html>
<head>
    <style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
    /*tr:nth-child(even) {
        background-color: #dddddd;
    }*/
    </style>
</head>


<body>

<table>

    <thead>
    <tr>
        <th>SR No</th>
        <th>Book Name</th>
        <th>Book Author</th>
        <th>Publication Date</th>
        <th>Price</th>
        <th>ISBN</th>
    </tr>
    </thead>

    <tbody id="myTable">
    <g:each in="${list}" status="i" var="instance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <td>${i+1}</td>
            <td>${instance?.name}</td>
            <td>${instance?.author}</td>
            <td>${instance?.date}</td>
            <td>${instance?.price}</td>
            <td>${instance?.isbn}</td>
        </tr>
    </g:each>
    </tbody>

</table>

</body>
</html>
