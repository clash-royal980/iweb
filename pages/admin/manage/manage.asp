<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body bgcolor="cyan">

<%
 dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select * from [order]"

rs.open sql,conn,1,3
%>
<br/>

<table border="1">

  <tr>
  
     <td>用户ID</td>

    <td>商品ID</td>

    <td>商品价格</td>
	
	<td>商品名称</td>
	
	<td>地址</td>
	
	<td>电话</td>

  </tr>

<%

'如果没有查到任何东西这样写，ASP没有括号，条件体必须用end if结束，then相当于左括号，end if相当于右括号

if (rs.bof and rs.eof) then

       Response.Write("暂无订单")

else

'否则就循环，直到读完这条游标，循环条件是not rs.eof，ASP没有括号，do while循环体必须用loop结束，do while后自带左括号，loop相当于右括号

'下面的html循环一次就向网页写入一次

do while not rs.eof

%>

  <tr>
  
    <td><%=rs("ID")%></td>

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
<form action="finish.asp" method="get">
完成订单,商品ID<input type="text" name="ID" />
<input type="submit" value="提交" />
</body>
</html>
