<%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_choose_when_otherwise_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/29
  Time(创建时间)： 19:55
  Description(描述)：
  JSTL <c:choose>、<c:when>和<c:otherwise>标签类似于 Java 中的 switch-case 和 default 语句，可以从多个语句块中选择其中的一个执行。
  JSP <c:choose>、<c:when>和<c:otherwise>标签语法如下：
<c:choose>
    <c:when test="表达式1">
        // 表达式1为true时执行的代码块
    </c:when>
    <c:when test="表达式2">
        // 表达式2为true时执行的代码块
    </c:when>
    <c:otherwise>
        // 表达式都为false时执行的代码块
    </c:otherwise>
</c:choose>
其中：
<c:choose> 是父标签，相当于 Java Switch；
<c:when> 和 <c:otherwise> 是 <c:choose> 的子标签，可以有 0 个或多个。<c:when> 相当于 Java case，<c:otherwise> 相当于 Java default；
<c:when> 标签必须位于 <c:otherwise> 标签之前，<c:when> 中的判断语句都为假时，才会执行 <c:otherwise> 中的内容。
注意：当多个 <c:when> 标签中的判断语句为 true 时，只会执行第一个判断语句为 true 的<c:when> 中的内容。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="age" value="55" scope="session"/>
<c:choose>
    <c:when test="${age<10}">
        <c:out value="小于10" escapeXml="true" default=""/>
    </c:when>
    <c:when test="${age<20}">
        <c:out value="大于10，小于20" escapeXml="true" default=""/>
    </c:when>
    <c:when test="${age<30}">
        <c:out value="大于20，小于30" escapeXml="true" default=""/>
    </c:when>
    <c:when test="${age<40}">
        <c:out value="大于30，小于40" escapeXml="true" default=""/>
    </c:when>
    <c:when test="${age<50}">
        <c:out value="大于40，小于50" escapeXml="true" default=""/>
    </c:when>
    <c:when test="${age<60}">
        <c:out value="大于50，小于60" escapeXml="true" default=""/>
    </c:when>
    <c:when test="${age<70}">
        <c:out value="大于60，小于70" escapeXml="true" default=""/>
    </c:when>
    <c:when test="${age<80}">
        <c:out value="大于70，小于80" escapeXml="true" default=""/>
    </c:when>
    <c:when test="${age<90}">
        <c:out value="大于80，小于90" escapeXml="true" default=""/>
    </c:when>
    <c:otherwise>
        <c:out value="大于40" escapeXml="true" default=""/>
    </c:otherwise>
</c:choose>
</body>
</html>
