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
 <body bgcolor="aqua">
<font color="black">
<% Integer hit=
        (Integer)application.getAttribute("hit");
    if(hit==null||hit==0)
    {
        out.print("欢迎访问这个页面");
        hit=1;
    }
    else
    {
        out.print("欢迎再次访问这个页面");
        hit++;
    }
    application.setAttribute("hit",hit);

%><p>当前网页访问量为：<%=hit%></p></font>
    <div align="middle">
 <form action="calculator.jsp" method="post">
   <font size="10" style="color:blue">网页计算器登录界面</font><br>
        <hr>
     用户名：<input type="text" value=""name="username"><br>
     密  码：<input type="text"value="" name="password"><br>
     <input type="submit" value="提交">
     <input type="reset"value="重置">
     </form>
    </div>
 </body>
</html>

