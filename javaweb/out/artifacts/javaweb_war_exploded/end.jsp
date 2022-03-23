<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/3/19
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!--<link type="text/css" rel="stylesheet" href="css/end.css" >-->
    <title>Title</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            align-content: center;
            background-image: url("image/3.jpeg");
        }

        #list_left {
            height: 700px;
            width: 400px;
            overflow: auto;
            left:160px;
            top:150px;
            position: absolute;
        }

        #correct_left {
            height: 700px;
            width: 400px;
            overflow: auto;
            left:580px;
            top:150px;
            position: absolute;
        }

        #list_right {
            height: 700px;
            width: 400px;
            overflow: auto;
            left:1000px;
            top:150px;
            position: absolute;
        }

        #correct_right {
            height: 700px;
            width: 400px;
            overflow: auto;
            left:1420px;
            top:150px;
            position: absolute;
        }

    </style>
</head>
<body>
        <div>
        <div id="list_left">
        <ul style="list-style:none">
            <li>题目</li>
            <c:forEach items="${list0}" var="question" varStatus="status" begin="0" end="${count}">
                <li>${question}</li>
            </c:forEach>
        </ul>
        </div>
        <div id="correct_left">
        <ul style="list-style:none">
            <li>回答</li>
            <c:forEach items="${requestScope.inputs}" var="useranswer" varStatus="status" begin="0" end="${count}">
                <li>${useranswer}</li>
            </c:forEach>
        </ul>
        </div>
        <div id="list_right">
        <ul style="list-style:none">
            <li>答案</li>
            <c:forEach items="${requestScope.list1}" var="answer" varStatus="status" begin="0" end="${count}">
                <li>${answer}</li>
            </c:forEach>
        </ul>
        </div>
        <div id="correct_right">
        <ul style="list-style:none">
            <li>对错</li>
            <c:forEach items="${requestScope.right}" var="judge" varStatus="status" begin="0" end="${count}">
                <c:if test="${judge==0}">
                    <li style="color:red">(×)</li>
                </c:if>
                <c:if test="${judge==1}">
                    <li style="color:green">(√)</li>
                </c:if>
            </c:forEach>
        </ul>
        </div>
            <table style="align-content: center">
                <tr>
                    <th>总分</th>
                    <th>本次得分</th>
                    <th>(每小题5分)</th>
                </tr>
                <tr>
            <c:forEach items="${requestScope.score}" var="score" varStatus="status" begin="0" end="1">
                    <td>${score}</td>
            </c:forEach>
                </tr>
            </table>
        </div>
        <div >
            <a href="index.jsp">再练一次</a>
        </div>
</body>
</html>
