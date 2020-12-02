<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>myshop</title>
<link href=../css/style.css rel=stylesheet type=text/css>
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
<%
session.Contents.Remove("name1")
%>
<div class="box">
<div class="top">
<div class="logo"></div>
<div class="daohang"><div class="首页"><P align="center"><font size="5"><a href="../index.asp">首页</a></font></P><p align="center"><a href="../index.asp"><img src="../picture/first.png" border="0" /></a></p>
</div><div class="购物车"><P align="center"><font size="5">购物车</font></P><p align="center"><img src="../picture/gwc.png" /></p></div><div class="退出"><P align="center"><font size="5"><a href="denglu/enter.asp">登录</a></font></P><p align="center"><a href="denglu/enter.asp"><img src="../picture/tc.jpg" border="0" /></a></p>
</div><div class="帮助"><P align="center"><font size="5">退出</font></P><p align="center"><img src="../picture/help.jpg" /></p></div></div>
</div>
<div class="news">

<div class="in"><br />
欢迎光临，购买商品请先<a href="denglu/enter.asp">【登录】</a>&nbsp;&nbsp;<a href="denglu/register.asp">【注册】</a>
</div>
<div class="cx">
<br />
<form method="get" action="chaxun.asp">
<input type="text" name="name" />
<input type="submit" value="搜索" />
</form>
</div>
</div>
<div class="picture"></div>
<div class="Commodity">
<div class="different"><p style="background-color:#0099CC" align="center" class="STYLE3">全部商品分类<br />
<ul>
<li class="STYLE5"><a href="shop.asp" target="a">全部商品</a></li>
<br />
<li><a href="navigation/phone.asp" target="a">手机数码</a></li><br />
<li><a href="navigation/clothes.asp" target="a">服装</a></li><br />
<li><a href="navigation/home.asp" target="a">家具</a></li><br />
<li><a href="navigation/fruit.asp" target="a">水果</a></li><br />
<li><a href="navigation/eat.asp" target="a">食品</a></li><br />
<li><a href="navigation/watch.asp" target="a">手表</a></li><br />
<li><a href="navigation/box.asp" target="a">包包</a></li><br />
<li><a href="navigation/car.asp" target="a">车类.用品</a></li><br />
<li><a href="navigation/qt.asp" target="a">其他</a></li><br />
</ul></p>
</div>
<div class="information"><iframe src="shop.asp" name="a" width="800" height="600"></iframe></div>
</div>
<div class="bottom"><p align="center">武汉文理学院&nbsp;&nbsp;&nbsp;&nbsp;电话：027-87022275<br />邮箱：2908093008@qq.com</p></div>
</div>
</body>
</html>