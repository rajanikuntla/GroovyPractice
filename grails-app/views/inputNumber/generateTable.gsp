<%--
  Created by IntelliJ IDEA.
  User: Tinku-Chinnu
  Date: 6/16/2018
  Time: 11:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Number Table</title>
</head>

<body>
    <g:if test="${error}">
        <p>Please enter a valid number</p>
    </g:if>
<g:else>
    <g:set var="i" value="${0}"></g:set>
    <g:set var="tempNum" value="${num as Integer}"></g:set>

   <g:while test="${i<10}">
       <span>${++i} * ${num} = ${i * tempNum }</span><br>
   </g:while>
</g:else>
</body>
</html>