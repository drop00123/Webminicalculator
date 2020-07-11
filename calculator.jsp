<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/8
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
    String a=request.getParameter("param");
%>
<%
    out.print("你好"+a);
%>
<html>
<head>
    <html align="middle">
    <h1 style="color:red">Welcome To Webminicalculator</h1>
    <head>
            <script type="text/javascript" >
        function onClickCheck(){
            if(document.form1.num1.value==""||document.form1.num2.value==""){
                window.alert("该文本框里面的内容不能为空!!");
                return false;
            }
            if(document.form1.flag.value=="/"&&document.form1.num2.value=="0")
            {
                window.alert("输入语法有误(0不可以作为被除数)");
                return false;
            }
            if(document.form1.num1.value=="\\d"||document.form1.num2.value=="\\d")
            {
                window.alert("请输入数字");
                return false;
            }
        }
    </script>
    </head>
<body bgcolor="#00fa9a">

<form name="form1" action = "myResult.jsp" >
    请输入第一个数：<input type = "text" name = "num1"><br>
    <select name="flag">
        <option value=+>+</option>
        <option value=->-</option>
        <option value=*>*</option>
        <option value=/>/</option>
    </select><br>
    请输入第二个数：<input type="text" name = "num2"><br>
    <input type = "submit" value = "计算" onclick="return onClickCheck();">
</form><br>
<hr>
</body>
</html>