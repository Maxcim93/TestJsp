<%@ page language="java" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.Map,java.util.LinkedList,com.maxim.model.Doctor,com.maxim.model.Patient" %>

<html>
    <head>
        <title>Расписание приемов клиники</title>
    </head>
    <body>
        <table border="1">
            <caption>Расписание приемов клиники</caption>
            <tr>
                <th>Имя доктора</th>
                <th>Специализация</th>
                <th>Имена пациентов</th>
            </tr>

            <c:forEach items="${schedule}" var="doctor" varStatus="status">
                <tr>
                    <td> ${doctor.getKey().getName()}</td>
                    <td>${doctor.getKey().getSpecialization()}</td>
                    <td>
                            <c:set var="patients" value="${doctor.getValue()}"/>
                            <c:forEach items="${patients}" var="patient" varStatus="status">
                                <p>${patient.getName()}</p>
                            </c:forEach>
                    </td>
                </tr>
            </c:forEach>

        </table>
        <p>
            <a href= "${pageContext.servletContext.contextPath}/views/clinic/AddUser.jsp">Добавить доктора</a>
            <a href= "${pageContext.servletContext.contextPath}/views/clinic/AddPatient.jsp">Записать пациента на прием</a>
        </p>
    </body>
</html>