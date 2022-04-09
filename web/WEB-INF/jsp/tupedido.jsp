<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TuPedido</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="card-header bg-dark text-white">
            <h1 style="text-align: center;font-family: cursive">PEDIDO PIZZAZA </h1>
        </div>
        <br/> <br/>
        <br/> <br/>
        <div class="container mt-6 col-lg-7">
            <div class="card border-dark"> 
                <div class="card-body bg-dark text-white">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th class="card-body bg-dark text-white">NºPEDIDO</th>
                                <th class="card-body bg-dark text-white">MENÚ</th>
                                <th class="card-body bg-dark text-white">PRECIO</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td class="text-white">${dato.id}</td>
                                    <td class="text-white">${dato.menú}</td>
                                    <td class="text-white">${dato.precio}</td>
                                </tr>
                            </c:forEach>
                        </tbody>   
                    </table>
                    <hr/>
                    <div class="container">
                        <a href="aceptar.htm" style="font-family: cursive" class="btn btn-success text-white">ENVIAR</a>
                        <a href="cancelar.htm" style="margin-left: 10px;font-family: cursive" class="btn btn-danger text-white">CANCELAR</a> 
                    </div>
                </div>
            </div>  
        </div>         
    </body>
</html>
