
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查询所有</title>
</head>
<body>
<form action="selectAll">
    请输入查询用户名<input type="text" name="name">
    <input type="submit" value="查询">
</form>
    <table border="1" align="center" width="900">
       <c:if test="${!empty employees}">
           <tr>
               <td>员工编号</td>
               <td>员工姓名</td>
               <td>员工性别</td>
               <td>员工生日</td>
               <td>操作</td>

           </tr>
           <c:forEach items="${employees}" var="employees">
               <tr>
                   <td>${employees.id}</td>
                   <td>${employees.name}</td>
                   <td>${employees.gender}</td>
                   <td>${employees.birthday}</td>
                   <td>
                       <a href="${pageContext.request.contextPath}/selectByPrimaryKey?id=${employees.id}">删除</a>
                       <a href="${pageContext.request.contextPath}/update?id=${employees.id}">更新</a>
                   </td>
               </tr>
           </c:forEach>
           <td colspan="6" align="right">
               <a href="${pageContext.request.contextPath}/insertadd">增加</a>
           </td>
       </c:if>
    </table>
</body>
</html>
