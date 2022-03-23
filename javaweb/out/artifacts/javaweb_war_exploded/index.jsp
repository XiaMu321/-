<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/3/16
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>简单四则运算练习</title>
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
          .container{
              background-image: url(image/4.jpeg);
              margin: 0 auto;
              height: 100%;
              padding-left: 40%;
              padding-top: 10%;
              background-size: 100%;
          }
          .box{
              width: 300px;
              height: 20%;
              align-content: center;
          }

      </style>
  </head>
  <body>

  <form action="http://localhost:8080/javaweb/start" method="post">

      <div class="container">
          <div class="box" style="font-size: 20px">
 数量：<input type="text" name="Count">
          </div>
          <div class="box" style="font-size: 20px">
 最大自然数：<input type="text" name="Range">
      </div>
          <div class="box" style="font-size: 20px">
 难度：<select name="Difficulty"  >
        <option value="createno">不带括号的整式运算</option>
        <option value="createInteger">带括号的整式运算</option>
        <option value="createFraction">真分数运算</option>
      </div>
       </select>
      <div class="box">
      <input type="submit">
      </div>
      </div>
      <br>
      <p style="font-size: 40px">注意：</p>
      <p>
      <b>1.请不要输入空格。</b>
      </p>
      <b>2.在真分数运算练习中 , 1'1/2表示一又二分之一既3/2 , 请使用真分数答题 , ”'“为英文输入法的”'“。</b>
  </form>

  </body>
</html>
