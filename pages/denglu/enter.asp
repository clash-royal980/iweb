<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>登录</title>
<link href=css/style.css rel=stylesheet type=text/css>
</head>
<body background="../../picture/enter.jpg">
<p align="center">
<font size="10" color="#FF0000"> 购物登录系统</font>
</p>
<br /><br /><br /><br />
<form method="get" action="judge.asp">
<p align="center">
用户名：<input type="text" name="name1" /><br /><br />
&nbsp;&nbsp;&nbsp;密码:<input type="password" name="name2" /><br /><br />
<input type="radio" name="R"  value="顾客" checked="ok"/>顾客<input type="radio" name="R" value="管理员"/>管理员<br /><br />
<input type="submit" value="登录" />&nbsp;&nbsp;<input name="重置" type="reset" value="重置" />
</form>
<p align="center">无账号?点击<a href="register.asp">注册</a></p>
<p align="center"><a href="../../index.asp">返回首页</a></p>
</p>
</body>
</html>
