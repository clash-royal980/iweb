<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>myshop</title>
<link href=css/style.css rel=stylesheet type=text/css>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:500px;
	height:142px;
	z-index:1;
	top: 204px;
	left: 280px;
	visibility: visible;
}
.STYLE3 {font-size: 18px}
.STYLE5 {font-size: x-large}
-->
</style>
</head>
<body bgcolor="#99FF99">
<div class="box">
<div class="top">
<div class="logo"></div>
<div class="daohang"><div class="��ҳ"><P align="center"><font size="5"><a href="index.asp">��ҳ</a></font></P><p align="center"><a href="index.asp"><img src="picture/first.png" border="0" /></a></p>
</div><div class="���ﳵ"><P align="center"><font size="5"><a href="pages/gwc.asp">���ﳵ</a></font></P><p align="center"><a href="pages/gwc.asp"><img src="picture/gwc.png" border="0" /></a></p>
</div><div class="�˳�"><P align="center"><font size="5"><a href="pages/denglu/enter.asp">��¼</a></font></P><p align="center"><a href="pages/denglu/enter.asp"><img src="picture/tc.jpg" border="0" /></a></p>
</div><div class="����"><P align="center"><font size="5"><a href="pages/tuichu.asp">�˳�</a></font></P><p align="center"><a href="pages/tuichu.asp"><img src="picture/help.jpg" border="0" /></a></p>
</div></div>
</div>
<div class="news">

<div class="in"><br />
<%
if (session("name1")="" or session("choose")="����Ա") then
%>
��ӭ���٣�������Ʒ����<a href="pages/denglu/enter.asp">����¼��</a>&nbsp;&nbsp;<a href="pages/denglu/register.asp">��ע�᡿</a>
<%
else 
%>
��ӭ���٣�<a href="gairoot.asp"><%= Session("name1")%></a>
<%
end if 
%>
</div>
<div class="cx">
<br />
<form method="get" action="chaxun.asp">
<input type="text" name="name" />
<input type="submit" value="����" />
</form>
</div>
</div>
<div class="picture"></div>
<div class="Commodity">
<div class="different"><p style="background-color:#0099CC" align="center" class="STYLE3">ȫ����Ʒ����<br />
<ul>
<li class="STYLE5"><a href="pages/shop.asp" target="a">ȫ����Ʒ</a></li>
<br />
<li><a href="pages/navigation/phone.asp" target="a">�ֻ�����</a></li><br />
<li><a href="pages/navigation/clothes.asp" target="a">��װ</a></li><br />
<li><a href="pages/navigation/home.asp" target="a">�Ҿ�</a></li><br />
<li><a href="pages/navigation/fruit.asp" target="a">ˮ��</a></li><br />
<li><a href="pages/navigation/eat.asp" target="a">ʳƷ</a></li><br />
<li><a href="pages/navigation/watch.asp" target="a">�ֱ�</a></li><br />
<li><a href="pages/navigation/box.asp" target="a">����</a></li><br />
<li><a href="pages/navigation/car.asp" target="a">����.��Ʒ</a></li><br />
<li><a href="pages/navigation/qt.asp" target="a">����</a></li><br />
</ul></p>
</div>
<div class="information"><iframe src="pages/shop.asp" name="a" width="800" height="600"></iframe></div>
</div>
<div class="bottom"><p align="center">�人����ѧԺ&nbsp;&nbsp;&nbsp;&nbsp;�绰��027-87022275<br />���䣺2908093008@qq.com</p></div>
</div>
</body>
</html>
