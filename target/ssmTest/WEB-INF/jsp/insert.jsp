<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加</title>
</head>
<body>
<div>
    <div align="center">增加员工</div>
    <form method="post" action="insert">
        <table border="1" align="center" width="900">
            <tr>
                <td>员工姓名</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>员工性别</td>
                <td><input type="radio" name="gender" value="男">男 <input type="radio" name="gender" value="女">女</td>
            </tr>
            <tr>
                <td>员工生日</td>
                <td><input type="text" name="birthday" ></td>
            </tr>

            <tr>
                <td colspan="2">
                    <input type="submit" value="添加">
                    <input type="reset" value="重置">

                </td>
            </tr>
        </table>
    </form></div>
</body>
</html>
