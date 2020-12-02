<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body>
<%
   a=request.QueryString("name2")
   if(len(a)<4) then
	   Response.Write("<script>alert('密码长短小于4');")
       Response.Write("window.location.href='addad.asp';")
       Response.Write("</script>")
	   Response.End() 
    end if
		dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'指定动作

Set rs = Server.CreateObject( "ADODB.Recordset" )


sql = "insert into admin(用户名,密码) values('"+request.QueryString("name1")+"','"+request.QueryString("name2")+"')"


rs.open sql,conn,1,3

       Response.Write("<script>alert('添加成功')</script>")
	   Response.End() 


%>
</body>
</html>
