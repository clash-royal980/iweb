<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>
<body>
<%
session("2")=request.QueryString("ID")
dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'ָ������

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select * from [order] where ��ƷID= "+request.QueryString("ID")+""

rs.open sql,conn,1,3

if (rs.bof and rs.eof) then
	   Response.Write("<script>alert('ID������');")
       Response.Write("window.location.href='manage.asp';")
       Response.Write("</script>")
	   Response.End() 
else
       Response.Redirect("finishin.asp")

rs.movenext

end if

%>
</body>
</html>
