<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<link href="../../css/style.css"rel=stylesheet type=text/css>
</head>
<body>
<%
	dim conn,connstr,db

	db="../denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'ָ������

Set rs = Server.CreateObject( "ADODB.Recordset" )

'��ѯ���

sql = "select * from shop where ͼƬ like '%car%'"

'ʹ��sql��conn���в�ѯ������Ĳ���������Ҫ��ȫ����������ݿ�

rs.open sql,conn,1,3

%>

<!--���˱�ͷ��asp���������html�����ϣ�tableĬ����û�б߿�ģ�����Ҫ����һ��border����-->

<br/>
<form action="../sub.asp" method="get">
������Ҫ��ӵ����ﳵ����ƷID��<input type="text" name="ID" />
<input type="submit" value="���" />
</form>


<%

'���û�в鵽�κζ�������д��ASPû�����ţ������������end if������then�൱�������ţ�end if�൱��������

if (rs.bof and rs.eof) then

response.write "nodata!"

else

'�����ѭ����ֱ�����������α꣬ѭ��������not rs.eof��ASPû�����ţ�do whileѭ���������loop������do while���Դ������ţ�loop�൱��������

'�����htmlѭ��һ�ξ�����ҳд��һ��

do while not rs.eof

%>

<table width="800" border="1" cellspacing="1" cellpadding="0">

  <tr>
    <td><img src="../../<%=rs("ͼƬ")%>" style="padding:10px; float:left;" />&nbsp;&nbsp;<p align="center"><%=rs("��Ʒ����")%><br /><br />&nbsp;&nbsp;�۸񣺣�<%=rs("��Ʒ�۸�")%><br /><br />&nbsp;&nbsp;
	 ��ƷID��<%=rs("��ƷID")%><br /><br /></td>
	<%	rs.movenext


loop

end if

%>
</table>
</body>
</html>
