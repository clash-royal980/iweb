<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
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


'ָ������

Set rs = Server.CreateObject( "ADODB.Recordset" )

'��ѯ���

if (request.QueryString("R")="�˿�") then

sql = "select * from customer where �û���='"+request.QueryString("name1")+"' and ����='"+request.QueryString("name2")+"'"

else

sql = "select * from admin where �û���='"+request.QueryString("name1")+"' and ����='"+request.QueryString("name2")+"'"

end if

rs.open sql,conn,1,3


'���û�в鵽�κζ�������д��ASPû�����ţ������������end if������then�൱�������ţ�end if�൱��������


if (rs.bof and rs.eof) then 

       Response.Write("<script>alert('�û������������');")
       Response.Write("window.location.href='enter.asp';")
       Response.Write("</script>")

else

do while not rs.eof

       Response.Write("<script>alert('��½�ɹ�');")
	   if (request.QueryString("R")="�˿�") then
       Response.Write("window.location.href='../../index.asp';") 
	   end if
	   if (request.QueryString("R")="����Ա") then
       Response.Write("window.location.href='../admin/admin.asp';") 
	   end if
       Response.Write("</script>")
  '����һ��α�������

rs.movenext

loop

end if



%>

</body>
</html>
