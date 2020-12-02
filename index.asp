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
<div class="daohang"><div class="首页"><P align="center"><font size="5"><a href="index.asp">首页</a></font></P><p align="center"><a href="index.asp"><img src="picture/first.png" border="0" /></a></p>
</div><div class="购物车"><P align="center"><font size="5"><a href="pages/gwc.asp">购物车</a></font></P><p align="center"><a href="pages/gwc.asp"><img src="picture/gwc.png" border="0" /></a></p>
</div><div class="退出"><P align="center"><font size="5"><a href="pages/denglu/enter.asp">登录</a></font></P><p align="center"><a href="pages/denglu/enter.asp"><img src="picture/tc.jpg" border="0" /></a></p>
</div><div class="帮助"><P align="center"><font size="5"><a href="pages/tuichu.asp">退出</a></font></P><p align="center"><a href="pages/tuichu.asp"><img src="picture/help.jpg" border="0" /></a></p>
</div></div>
</div>
<div class="news">

<div class="in"><br />
<%
if (session("name1")="" or session("choose")="管理员") then
%>
欢迎光临，购买商品请先<a href="pages/denglu/enter.asp">【登录】</a>&nbsp;&nbsp;<a href="pages/denglu/register.asp">【注册】</a>
<%
else 
%>
欢迎光临，<a href="gairoot.asp"><%= Session("name1")%></a>
<%
end if 
%>
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
<li class="STYLE5"><a href="pages/shop.asp" target="a">全部商品</a></li>
<br />
<li><a href="pages/navigation/phone.asp" target="a">手机数码</a></li><br />
<li><a href="pages/navigation/clothes.asp" target="a">服装</a></li><br />
<li><a href="pages/navigation/home.asp" target="a">家具</a></li><br />
<li><a href="pages/navigation/fruit.asp" target="a">水果</a></li><br />
<li><a href="pages/navigation/eat.asp" target="a">食品</a></li><br />
<li><a href="pages/navigation/watch.asp" target="a">手表</a></li><br />
<li><a href="pages/navigation/box.asp" target="a">包包</a></li><br />
<li><a href="pages/navigation/car.asp" target="a">车类.用品</a></li><br />
<li><a href="pages/navigation/qt.asp" target="a">其他</a></li><br />
</ul></p>
</div>
<div class="information"><iframe src="pages/shop.asp" name="a" width="800" height="600"></iframe></div>
</div>
<div class="bottom"><p align="center">武汉文理学院&nbsp;&nbsp;&nbsp;&nbsp;电话：027-87022275<br />邮箱：2908093008@qq.com</p></div>
</div>
</body>
</html>
