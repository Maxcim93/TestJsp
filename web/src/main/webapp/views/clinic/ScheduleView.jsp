<%@ page language="java" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.Map,java.util.LinkedList,com.maxim.model.Doctor,com.maxim.model.Patient" %>

<html>
    <head>
        <title>Расписание приемов клиники</title>
    </head>
    <body>
        <table>
            <caption>Расписание приемов клиники</caption>
            <tr>
                <th>Имя доктора</th>
                <th>Специализация</th>
                <th>Имена пациентов</th>
            </tr>
            <%
                Map<Doctor,LinkedList<Patient>> schedule=(Map<Doctor,LinkedList<Patient>>)request.getAttribute("schedule");
                for(Map.Entry<Doctor,LinkedList<Patient>> doctor:schedule.entrySet()){
                out.println("<tr>");
                out.println("<td>"+ doctor.getKey().getName()+"</td>");
                out.println("<td>"+ doctor.getKey().getSpecialization()+"</td>");
                out.println("<td>"+""+"</td>");
                out.println("</tr>");
            }%>
        </table>
        <p>
            <a href= "${pageContext.servletContext.contextPath}/views/clinic/AddUser.jsp">Добавить доктора</a>
        </p>
    </body>
</html>