<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
</head>
<body bgcolor="#FFFFFF">
<%
session("BuyID")=request.QueryString("name")
dim conn,connstr,db

	db="/../wwwroot/website-C-W/myshop/pages/denglu/product.accdb" 

	Set conn = Server.CreateObject("ADODB.Connection")

	connstr="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath(db)

	conn.Open connstr
	

'ָ������

Set rs = Server.CreateObject( "ADODB.Recordset" )

sql = "select * from shop where ��ƷID ="+request.QueryString("name")+""

rs.open sql,conn,1,3

if (rs.bof and rs.eof) then
	   Response.Write("<script>alert('ID������');")
       Response.Write("window.location.href='revisesp.asp';")
       Response.Write("</script>")
	   Response.End() 
else

'�����ѭ����ֱ�����������α꣬ѭ��������not rs.eof��ASPû�����ţ�do whileѭ���������loop������do while���Դ������ţ�loop�൱��������

'�����htmlѭ��һ�ξ�����ҳд��һ��
%>
<form method="get" action="revisespin.asp">
<p align="center">
��Ʒ����<input type="text" name="name1" /><br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�۸�:<input type="text" name="name2"/><font color="#FF0000">(�۸����Ϊ����)</font><br /><br />
&nbsp;&nbsp;������<input type="text" name="name3" /><br /><br />
<input type="submit" value="ȷ��" />&nbsp;&nbsp;<input name="����" type="reset" value="����" /></p>
</form>
<%
rs.movenext

end if

%>
</body>
</html>
