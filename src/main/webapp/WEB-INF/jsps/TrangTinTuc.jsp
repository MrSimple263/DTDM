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

<div class="container" style="margin-top: 100px">
    <div class="row">
        <div class="col-md-8">
            <div class="tin-tuc">
            <c:forEach items="${listnews}" var="n">
            	<div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-5">
                            <div class="imgtile">
                                <img src="image/news-logo.jpg"
                                     alt="not img" class="img-responsive">
                            </div>
                        </div>
                        <div class="col-md-5 col-xs-7 tile">
                            <tile><h3><a href="viewnews?id=${n.id}">${n.title}</a>
                            </h3>
                            </tile>
                            <span>${n.des}</span>
                            <a href="ViewNews?id=${n.id}" class="xen-tiep">Xem tiep</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
    </div>
</div>
<div class="btn-chuyentrang">
    <div class="bnt-group">
        <button type="button"> <<</button>
        <button type="button" id="btn-next"> >></button>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="js/JSfile.js"></script>
</body>
</html>