<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/3/19
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://s3.pstatp.com/cdn/expire-1-M/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(function () {
            // 给提交按钮绑定单击事件
            $("#sub").click(function () {
                return confirm("你确定要交卷吗?");
            });

            // 给输入框绑定内容改变事件，判断输入是否合法
            $(".input").change(function () {
                var answer = this.value;
                var answerPatt = /^([a-z]*)[A-Z]*[a-z]*([A-Z]*)$/;
                if (answerPatt.test(answer)) {
                    alert("您的输入有误，请重新输入");
                    this.value = this.defaultValue;
                }
            });
        });
    </script>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            align-content: center;
        }
        html,body{
            height: 89%;
            align-content: center;
        }
        div{
            background-image: url("image/2.jpeg");
            height: 100%;
            top: 50%;
            left: 50%;
            margin: 0 auto;
            padding-top: 10%;
            padding-left: 40%;
            background-size: 100%;
        }

    </style>
</head>
<body>
    <form action="http://localhost:8080/javaweb/end" method="post">
     <div>
     <table >
         <tr>
             <th>题目</th>
             <th>答题框</th>
             <th></th>
         </tr>
         <c:forEach items="${requestScope.list0}" var="qusetion" varStatus="status" begin="0" end="${count}">
         <tr>
             <td >${qusetion}</td>
             <td><input type="text" name="inputs" class="input"/></td>

         </tr>
         </c:forEach>
             <tr>
                 <c:forEach items="${requestScope.list0}" var="list0" varStatus="status" begin="0" end="${count}">
                     <td><input type="hidden"  name = "list0" value="${list0}"/></td>
                 </c:forEach>
                 <c:forEach items="${requestScope.list1}" var="list1" varStatus="status" begin="0" end="${count}">
                     <td><input type="hidden"  name = "list1" value="${list1}"/></td>
                 </c:forEach>
                    <td><input type="hidden" name = "count" value="${count}"/></td>
             </tr>
     </table>
        <input type="submit" id="sub"/>
    </form>
    </div>
</body>
</html>
