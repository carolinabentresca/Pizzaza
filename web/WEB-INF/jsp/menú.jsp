<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="card-header bg-dark text-white">
            <h1 style="text-align: center;font-family: cursive">TU PIZZAZA</h1>
        </div>
        <div class="container mt-3">
            <div class="card border-dark"> 
                <div class="card-body bg-dark text-white">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="card-body bg-dark text-white">NºPEDIDO</th>
                                <th class="card-body bg-dark text-white">MENÚ</th>
                                <th class="card-body bg-dark text-white">DESCRIPCIÓN</th>
                                <th class="card-body bg-dark text-white">PRECIO</th>
                                <th class="card-body bg-dark text-white">PEDIR</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td class="text-white">${dato.id}</td>
                                    <td class="text-white">${dato.menú}</td>
                                    <td class="text-white">${dato.descripción}</td>
                                    <td class="text-white">${dato.precio}</td>
                                    <td>
                                        <a href="tupedido.htm?id=${dato.id}" style="font-family: cursive" class="btn btn-danger">OK</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>  
        </div>         
    </body>
</html>
