<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>
<body>
<%
    if(request.QueryString("name1")="") then
	   Response.Write("<script>alert('��Ʒ������Ϊ��');")
       Response.Write("window.location.href='addsp.asp';")
       Response.Write("</script>")
	   Response.End() 
	end if
	 if(request.QueryString("name2")="") then
	   Response.Write("<script>alert('�۸���Ϊ��');")
       Response.Write("window.location.href='addsp.asp';")
       Response.Write("</script>")
	   Response.End() 
	 end if    
	 if(request.QueryString("name3")="") then
	   Response.Write("<script>alert('��������Ϊ��');")
       Response.Write("window.location.href='addsp.asp';")
       Response.Write("</script>")
	   Response.End() 
	 end if
	 if not IsNumeric (request.QueryString("name2")) then
	   Response.Write("<script>alert('�۸�Ϊ����');")
       Response.Write("window.location.href='addsp.asp';")
       Response.Write("</script>")
	   Response.End() 
     end if
	 if not IsNumeric (request.QueryString("name3")) then
	   Response.Write("<script>alert('������Ϊ����');")
       Response.Write("window.location.href='addsp.asp';")
       Response.Write("</script>")
	   Response.End() 
     end if
	 
	 dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'ָ������

Set rs = Server.CreateObject( "ADODB.Recordset" )


sql = "insert into shop(��Ʒ����,��Ʒ�۸�,��Ʒ����) values('"+request.QueryString("name1")+"',"+request.QueryString("name2")+","+request.QueryString("name3")+")"

rs.open sql,conn,1,3

       Response.Write("<script>alert('��ӳɹ�')</script>")
	   Response.End() 

%>
</body>
</html>
