<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>myshop</title>
<link href=gwc.css rel=stylesheet type=text/css>
<style type="text/css">
<!--
.STYLE3 {font-size: 18px}
.box
{margin:0 auto;
width:1000px;
height:1000px;
}
.Commodity{
width:1000px;
height:600px;}
-->
</style>
</head>
<body bgcolor="#99FF99">
<div class="box">
<div class="Commodity" style="background-color:#FF9933"><h1><p align="center">我的购物车</p></h1>
<br />
<%
dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'指定动作

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select * from [order]"

rs.open sql,conn,1,3

if (rs.bof and rs.eof) then

       Response.Write("没有添加商品")

else

%>



<br/>

<table border="1">

  <tr>

    <td>商品ID</td>

    <td>商品价格</td>
	
	<td>商品名称</td>
	
	<td>地址</td>
	
	<td>电话</td>

  </tr>

<%

'如果没有查到任何东西这样写，ASP没有括号，条件体必须用end if结束，then相当于左括号，end if相当于右括号



'否则就循环，直到读完这条游标，循环条件是not rs.eof，ASP没有括号，do while循环体必须用loop结束，do while后自带左括号，loop相当于右括号

'下面的html循环一次就向网页写入一次

do while not rs.eof

%>

  <tr>

    <td><%=rs("商品ID")%></td>

    <td><%=rs("商品价格")%></td>
	
	<td><%=rs("商品名称")%></td>
	
	<td><%=rs("地址")%></td>
		
	<td><%=rs("电话")%></td>

  </tr>

  <%

  '读完一项，游标向下拉

rs.movenext

loop

end if
%>
</table>
<%
Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select sum(商品价格) as 商品价格 from [order]"

rs.open sql,conn,1,3

%>
总计：<%=rs("商品价格")%>

<form action="s.asp" method="get">
输入商品ID删除商品:<input type="text" name="ID" />
<input type="submit" value="提交" />
</form><br />
<a href="../index.asp">返回首页</a>
</div>
</body>
</html>

