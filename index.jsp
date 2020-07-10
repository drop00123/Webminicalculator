<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/10
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
        <title>Welcome to here</title>
      </head>
  <body>
    <div align="middle">
    <form action="calculator" method="post" name=form>
         <font size="10" style="color:blue">网页计算器登录界面</font><br>
        <hr>
         用户名：<input type="text" value=""name="username"><br>
         密    码：<input type="text"value="" name="password"><br>
         <a href="calculator.jsp">提交</a>
         <input type="reset"value="重置">   
        </form>
    </div>
  </body>
</html>

