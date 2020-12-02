<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body>
<%
 dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "insert into [order](ID,商品ID,商品名称,商品价格,地址,电话) select ID,商品ID,商品名称,商品价格,地址,电话 from customer,shop where 用户名='"+session("name1")+"'and 商品ID="+session("1")+""

rs.open sql,conn,1,3

       Response.Write("<script>alert('添加成功');")
       Response.Write("window.location.href='shop.asp';")
       Response.Write("</script>")

%>
</body>
</html>
