<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body>
<%
     session("name1")=request.QueryString("name1")
	 session("choose")=request.QueryString("R")
	 
	dim conn,connstr,db

	db="product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'指定动作

Set rs = Server.CreateObject( "ADODB.Recordset" )

'查询语句

if (request.QueryString("R")="顾客") then

sql = "select * from customer where 用户名='"+request.QueryString("name1")+"' and 密码='"+request.QueryString("name2")+"'"

else

sql = "select * from admin where 用户名='"+request.QueryString("name1")+"' and 密码='"+request.QueryString("name2")+"'"

end if

rs.open sql,conn,1,3


'如果没有查到任何东西这样写，ASP没有括号，条件体必须用end if结束，then相当于左括号，end if相当于右括号


if (rs.bof and rs.eof) then 

       Response.Write("<script>alert('用户名或密码错误');")
       Response.Write("window.location.href='enter.asp';")
       Response.Write("</script>")

else

do while not rs.eof

       Response.Write("<script>alert('登陆成功');")
	   if (request.QueryString("R")="顾客") then
       Response.Write("window.location.href='../../index.asp';") 
	   end if
	   if (request.QueryString("R")="管理员") then
       Response.Write("window.location.href='../admin/admin.asp';") 
	   end if
       Response.Write("</script>")
  '读完一项，游标向下拉

rs.movenext

loop

end if



%>

</body>
</html>
