<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body bgcolor="#FFFFFF">
<%
session("BuyID")=request.QueryString("name")
dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr
	

'指定动作

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select * from shop where 商品ID ="+request.QueryString("name")+""

rs.open sql,conn,1,3

if (rs.bof and rs.eof) then
	   Response.Write("<script>alert('ID不存在');")
       Response.Write("window.location.href='revisesp.asp';")
       Response.Write("</script>")
	   Response.End() 
else

'否则就循环，直到读完这条游标，循环条件是not rs.eof，ASP没有括号，do while循环体必须用loop结束，do while后自带左括号，loop相当于右括号

'下面的html循环一次就向网页写入一次
%>
<form method="get" action="revisespin.asp">
<p align="center">
商品名：<input type="text" name="name1" /><br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价格:<input type="text" name="name2"/><font color="#FF0000">(价格必须为数字)</font><br /><br />
&nbsp;&nbsp;数量：<input type="text" name="name3" /><br /><br />
<input type="submit" value="确定" />&nbsp;&nbsp;<input name="重置" type="reset" value="重置" /></p>
</form>
<%
rs.movenext

end if

%>
</body>
</html>
