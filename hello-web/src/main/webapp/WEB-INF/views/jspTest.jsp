<%--
  Created by IntelliJ IDEA.
  User: cksgm
  Date: 2023-12-07
  Time: 오후 7:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Jsp | Test</title>
    <style>
        table {
            border: 1px solid #000;
            border-collapse: collapse;
            margin: 20px 10px;
        }

        th, td {
            border: 1px solid #000;
            padding: 5px;
        }
    </style>
</head>
<body>
<h1>Test</h1>

<h3>names</h3>
<ul>
    <li>${names[0]}</li>
    <li>${names[1]}</li>
    <li>${names[2]}</li>
    <li>${names[3]}</li>
</ul>

<h3>items</h3>
<table>
    <thead>
    <tr>
      <th>No</th>
      <th>이름</th>
      <th>가격</th>
    </tr>
    <tbody>
    <c:forEach items="${items}" var="i">
        <tr>
            <td>${i.no}</td>
            <td>${i.name}</td>
            <td><fmt:formatNumber value="${i.price}" type="currency"/> </td>
        </tr>
    </c:forEach>
</tbody>
</table>

<h3>map</h3>
<table>
    <tbody>
    <tr>
        <th>이름</th>
        <td>
            <input type="text" value="${map.name}" />
        </td>
    </tr>
    <tr>
        <th>나이</th>
        <td>
            <input type="number" value="${map.age}"/>
        </td>
    </tr>
    <tr>
        <th>결혼여부</th>
        <td>
            <input type="checkbox" ${map.married ? "checked" : ''} />
        </td>
    </tr>
    </tbody>
</table>


<h2>숫자</h2>
<ul>
    <li><fmt:formatNumber value="${no1}" pattern="###.##"/></li><%-- 123.46 --%>
    <li><fmt:formatNumber value="${no1}"/></li><%-- 123.456 --%>
    <li><fmt:formatNumber value="${no1}" pattern="#.00000"/></li><%-- 123.45600 --%>
    <li><fmt:formatNumber value="${no2}" pattern="#,###"/></li><%-- 3,000,000 --%>
    <li><fmt:formatNumber value="${no2}" type="currency"/> </li><%-- ₩3,000,000 --%>
    <li><fmt:formatNumber value="${no3}" pattern="##%"/> </li><%-- 15% --%>
</ul>

<h2>날짜/시각</h2>
<ul>
    <li><fmt:formatDate value="${date}" pattern="yyyy년MM월dd일"/></li><%-- 2023년07월24일 --%>
    <li><fmt:formatDate value="${datetime}" pattern="yyyy/MM/dd/hh:mm:ss.SSS"/></li><%-- 2023/12/07 18:00:52.335 --%>
</ul>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</body>
</html>