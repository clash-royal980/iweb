<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�û��޸�</title>
</head>
<body bgcolor="#99FF99">
<p align="center"><font size="5" color="#3333FF">�û���Ϣ�޸�</font></p>
<%
	dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'ָ������

Set rs = Server.CreateObject( "ADODB.Recordset" )

'��ѯ���

sql = "select * from customer where �û���='"+Session("name1")+"'"

'ʹ��sql��conn���в�ѯ������Ĳ���������Ҫ��ȫ����������ݿ�

rs.open sql,conn,1,3
session("aaa")=rs("�û���")

do while not rs.eof
%>
<form method="get" action="gaisql.asp">
<p align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID��<input type="text" name="ID" value="<%=rs("ID")%> " disabled="disabled"/>(ID�����޸�)<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�û�����<input type="text" name="name1" value="<%=rs("�û���")%> " disabled="disabled"/>(�û��������޸�)<br /><br />
���룺<input type="text" name="name2" value="<%=rs("����")%>" /><br /><br />
��ַ��<input type="text" name="name3" value="<%=rs("��ַ")%>" /><br /><br />
�绰��<input type="text" name="name4" value="<%=rs("�绰")%>" /><br /><br />
<input type="submit" value="ȷ��" />
</form>

<%
rs.movenext

loop
%>
<p align="center"><a href="index.asp">������ҳ</a></p>
</body>
</html>
