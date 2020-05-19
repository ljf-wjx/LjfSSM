<%--
  Created by IntelliJ IDEA.
  User: 20640
  Date: 2020/5/18
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
<div>
    <div align="center">更新员工信息</div>
    <form method="post" action="updateByPrimaryKey">
        <table border="1" align="center" width="900">
            <tr>
                <td>员工编号</td>
                <td><input type="text" name="id" value="${tbEmps.id}"></td>
            </tr>
            <tr>
                <td>员工姓名</td>
                <td><input type="text" name="name" value="${tbEmps.name}"></td>
            </tr>
            <tr>
                <td>员工性别</td>
                <td><input type="radio" name="gender" value="男">男 <input type="radio" name="gender" value="女">女</td>
            </tr>
            <tr>
                <td>员工生日</td>
                <td><input type="text" name="birthday" value="${tbEmps.birthday}"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="更新">
                    <input type="reset" value="重置">

                </td>
            </tr>
        </table>
    </form></div>
</body>
</html>


