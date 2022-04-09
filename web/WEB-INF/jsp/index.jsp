<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="card-header bg-dark text-white">
            <h1 style="text-align: center;font-family: cursive">BIENVENIDO A PIZZAZA </h1>
        </div>
        <br/>
        <div class="container mt-5 col-lg-7">
            <div class="card border-dark"> 
                <div class="card-body bg-dark text-white">
                    <form method="POST">
                        <label>USUARIO</label>
                        <input type="text" name="usuario" placeholder=" " required="required" class="form-control" />
                        <label>PASSWORD</label>
                        <input type="password" name="password" placeholder=" " required="required" class="form-control" />
                        <br/>
                        <br/> 
                        <div class="container">
                            <input type="submit" value="INGRESAR" style="font-family: cursive" class="btn btn-success text-white"/>
                            <a href="registro.htm" style="margin-left: 10px;font-family: cursive" class="btn btn-danger text-white">REGISTRO</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
