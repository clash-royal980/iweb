<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>
<body>
<%
    if(request.QueryString("name2")="") then
	   Response.Write("<script>alert('密码不能为空');")
       Response.Write("window.location.href='gairoot.asp';")

       Response.Write("</script>")
	   Response.End() 
	end if
	 if(request.QueryString("name3")="") then
	   Response.Write("<script>alert('地址不能为空');")
       Response.Write("window.location.href='gairoot.asp';")
       Response.Write("</script>")
	   Response.End() 
	 end if    
	 if(request.QueryString("name4")="") then
	   Response.Write("<script>alert('电话号码不能为空');")
       Response.Write("window.location.href='gairoot.asp';")
       Response.Write("</script>")
	   Response.End() 
	 end if
    dim a,b
     
   a=request.QueryString("name2")
   
   b=request.QueryString("name4")
   
   	if(len(a)<4) then
	   Response.Write("<script>alert('密码长短小于4');")
       Response.Write("window.location.href='gairoot.asp';")
       Response.Write("</script>")
	   Response.End() 
   
    end if
    if(len(b)<>11 or asc(b)>127) then
	   Response.Write("<script>alert('电话格式错误');")
       Response.Write("window.location.href='gairoot.asp';")
       Response.Write("</script>")
       Response.End() 
    end if
	

	dim conn,connstr,db

	db="pages\denglu\product.accdb"  

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "update customer set 密码='"+request.QueryString("name2")+"',地址='"+request.QueryString("name3")+"',电话='"+request.QueryString("name4")+"' where 用户名= '"+session("aaa")+"'"


rs.open sql,conn,1,3

       Response.Write("<script>alert('修改成功');")
       Response.Write("window.location.href='index.asp';")
       Response.Write("</script>")

%>
</body>
</html>
