<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
        <c:if test="${empty film.title}">
            <title>Add Film</title>
        </c:if>
        <c:if test="${!empty film.title}">
            <title>Edit</title>
        </c:if>
    </head>
    <body>
        <c:if test="${empty film.title}">
            <c:url value="/add" var="var"/>
        </c:if>
        <c:if test="${!empty film.title}">
            <c:url value="/edit" var="var"/>
        </c:if>
        <form action="${var}" method="POST">
            <c:if test="${!empty film.title}">
                <input type="hidden" name="id" value="${film.id}">
            </c:if>
            <label for="title">Title</label>
            <input type="text" name="title" id="title">
            <label for="year">Year</label>
            <input type="text" name="year" id="year">
            <label for="genre">Genre</label>
            <input type="text" name="genre" id="genre">
            <label for="watched">Watched</label>
            <input type="text" name="watched" id="watched">
            <c:if test="${empty film.title}">
                <input type="submit" value="Add new film">
            </c:if>
            <c:if test="${!empty film.title}">
                <input type="submit" value="Edit film">
            </c:if>
        </form>
    </body>
</html>
