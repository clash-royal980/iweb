<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>myshop</title>
<link href=gwc.css rel=stylesheet type=text/css>
<style type="text/css">
<!--
.STYLE3 {font-size: 18px}
.box
{margin:0 auto;
width:1000px;
height:1000px;
}
.Commodity{
width:1000px;
height:600px;}
-->
</style>
</head>
<body bgcolor="#99FF99">
<div class="box">
<div class="Commodity" style="background-color:#FF9933"><h1><p align="center">�ҵĹ��ﳵ</p></h1>
<br />
<%
dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'ָ������

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select * from [order]"

rs.open sql,conn,1,3

if (rs.bof and rs.eof) then

       Response.Write("û�������Ʒ")

else

%>



<br/>

<table border="1">

  <tr>

    <td>��ƷID</td>

    <td>��Ʒ�۸�</td>
	
	<td>��Ʒ����</td>
	
	<td>��ַ</td>
	
	<td>�绰</td>

  </tr>

<%

'���û�в鵽�κζ�������д��ASPû�����ţ������������end if������then�൱�������ţ�end if�൱��������



'�����ѭ����ֱ�����������α꣬ѭ��������not rs.eof��ASPû�����ţ�do whileѭ���������loop������do while���Դ������ţ�loop�൱��������

'�����htmlѭ��һ�ξ�����ҳд��һ��

do while not rs.eof

%>

  <tr>

    <td><%=rs("��ƷID")%></td>

    <td><%=rs("��Ʒ�۸�")%></td>
	
	<td><%=rs("��Ʒ����")%></td>
	
	<td><%=rs("��ַ")%></td>
		
	<td><%=rs("�绰")%></td>

  </tr>

  <%

  '����һ��α�������

rs.movenext

loop

end if
%>
</table>
<%
Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select sum(��Ʒ�۸�) as ��Ʒ�۸� from [order]"

rs.open sql,conn,1,3

%>
�ܼƣ�<%=rs("��Ʒ�۸�")%>

<form action="s.asp" method="get">
������ƷIDɾ����Ʒ:<input type="text" name="ID" />
<input type="submit" value="�ύ" />
</form><br />
<a href="../index.asp">������ҳ</a>
</div>
</body>
</html>

