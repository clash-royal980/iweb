<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户修改</title>
</head>
<body bgcolor="#99FF99">
<p align="center"><font size="5" color="#3333FF">用户信息修改</font></p>
<%
	dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'指定动作

Set rs = Server.CreateObject( "ADODB.Recordset" )

'查询语句

sql = "select * from customer where 用户名='"+Session("name1")+"'"

'使用sql对conn进行查询，后面的参数代表我要完全操作这个数据库

rs.open sql,conn,1,3
session("aaa")=rs("用户名")

do while not rs.eof
%>
<form method="get" action="gaisql.asp">
<p align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID：<input type="text" name="ID" value="<%=rs("ID")%> " disabled="disabled"/>(ID不可修改)<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户名：<input type="text" name="name1" value="<%=rs("用户名")%> " disabled="disabled"/>(用户名不可修改)<br /><br />
密码：<input type="text" name="name2" value="<%=rs("密码")%>" /><br /><br />
地址：<input type="text" name="name3" value="<%=rs("地址")%>" /><br /><br />
电话：<input type="text" name="name4" value="<%=rs("电话")%>" /><br /><br />
<input type="submit" value="确定" />
</form>

<%
rs.movenext

loop
%>
<p align="center"><a href="index.asp">返回首页</a></p>
</body>
</html>
