<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Theme Made By www.w3schools.com - No Copyright -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="css/Trangchu.css" rel="stylesheet" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a  href="#myPage"><img src="image/logo.png" alt="logo" style="width: 40px ; height:50px"></a>

        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/">ABOUT</a></li>
                <li><a href="pagenews">POST NEWS</a></li>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" >LOGIN</button>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content" style="margin-top:150px;">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title" style="color:tomato">LOGIN</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-login">
                                    <lable>UserName:</lable>
                                    <input>
                                </div>
                                <div class="form-login" style="margin-top:5px">
                                    <lable>PassWord :</lable>
                                    <input>
                                </div>
                                <button type="submit" style="margin-top:10px;margin-left:150px;background-color:skyblue">LOGIN</button>
                            </div>
                            <div class="modal-footer">
                                <a href="Dangki.html"> Register here !!!</a>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
    </ul>
    </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="tin-tuc">
            	${news}
            </div>
            <div>Tệp đính kèm</div>
            <c:forEach items="${files}" var="file">
                <div>
                   <a href="${file}">${file}</a>
                </div>
            </c:forEach>

        </div>
    </div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>