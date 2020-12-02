<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body bgcolor="#FFFFFF">
<%
session("RootID")=request.QueryString("name")
dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr
	

'指定动作

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select * from customer where ID ="+request.QueryString("name")+""

rs.open sql,conn,1,3

if (rs.bof and rs.eof) then
	   Response.Write("<script>alert('ID不存在');")
       Response.Write("window.location.href='delete.asp';")
       Response.Write("</script>")
	   Response.End() 
else
       Response.Redirect("deletein.asp")

rs.movenext

end if

%>
</body>
</html>
