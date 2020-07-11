<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/8
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<body>
<font size="100"color="#ff4500"face="楷体">
<%
    //接受第一个数
    String num1_get = request.getParameter("num1");
    //接受第二个数
    String num2_get = request.getParameter("num2");
    //接受运算符号
    String flag = request.getParameter("flag");
    //计算
    double num1=0;
    double num2=0;
    double result=0;
    num1=Double.parseDouble(num1_get);
    num2=Double.parseDouble(num2_get);
    if(flag.equals("+")){
        result=num1+num2;
    }
    else if(flag.equals("-")){
        result=num1-num2;
    }
    else if(flag.equals("*")){
        result=num1*num2;
    }
    else{
        result=num1/num2;
    }
    out.println("计算结果为:"+num1+flag+num2+"="+result);
    //输出结果
%></font>
</body>
</html>