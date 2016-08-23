<%@ page language="java" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%!Entry<Doctor,LinkedList<Patient>> doctor; %>
<html>
    <head>
        <title>Расписание приемов клиники</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Имя доктора</th>
                <th>Спциализация</th>
                <th>Имена пациентов</th>
            </tr>
            <% for(doctor: request.getAttribute("schedule") ){
                out.println("<tr>");
                out.println("<td>"+ doctor.getKey().getName()+"</td>");
                out.println("<td>"+ doctor.getKey().getSpecialization()+"</td>");
                out.println("<td>"+""+"</td>");
                out.println("</tr>");
            }%>
        </table>
    </body>
</html>