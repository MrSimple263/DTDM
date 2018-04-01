<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/StyleQLTT.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
    <title>Trang Quan Lí Tin Tức</title>
</head>
<body>
<div class="head">TRANG QUẢN LÍ TIN TỨC</div>
<div class="container">
    <table class="table table-hover" id="table">
        <thead>
        <tr>
            <th>Mã Tin Tức</th>
            <th>Tiêu Đề</th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td></td>
            <td></td>
            <td ></td>
            <td ></td>
            <td ><a href="addnews" ><span class="glyphicon glyphicon-plus"></span></a></td>
        </tr>
        <c:forEach items="${news}" var="news">
            <tr>
                <td>${news.id}</td>
                <td>${news.title}</td>
                <td ><a href="updnews?id=${news.id}" class="glyphicon glyphicon-pencil"></a></td>
                <td ><a href="#" class="glyphicon glyphicon-remove"></a></td>
                <td ><a href="addnews" ><span class="glyphicon glyphicon-plus"></span></a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
<div class="delete">
    <div id="myDel" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn muốn xóa chứ</p>
                </div>
                <div class="modal-footer">
                    <form method="post" class="frm-del">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" >Yes</button>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="js/news_jsfile.js"></script>
</body>
</html>