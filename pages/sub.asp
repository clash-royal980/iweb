<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>
<body>
<%  
session("1")=request.QueryString("ID")
if(session("name1")="") then
       Response.Write("<script>alert('���ȵ�¼');")
       Response.Write("window.location.href='shop.asp';")
       Response.Write("</script>")
end if
if(request.QueryString("ID")="") then
       Response.Write("<script>alert('������ID');")
       Response.Write("window.location.href='shop.asp';")
       Response.Write("</script>")
end if
 dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr


'ָ������

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select shop.��ƷID,shop.��Ʒ�۸�,shop.��Ʒ����,customer.��ַ,customer.�绰 from customer,shop where customer.�û���='"+session("name1")+"'and shop.��ƷID="+request.QueryString("ID")+""

rs.open sql,conn,1,3


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

if (rs.bof and rs.eof) then

       Response.Write("<script>alert('��ƷID������');")
       Response.Write("window.location.href='shop.asp';")
       Response.Write("</script>")

else

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
<a href="sun.asp">��ӵ����ﳵ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="shop.asp">����</a>

</body>
</html>
