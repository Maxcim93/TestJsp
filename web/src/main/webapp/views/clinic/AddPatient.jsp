<%@ page language="java" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Записать пациента на прием</title>
    </head>
    <body>
        <form action="${pageContext.servletContext.contextPath}/clinic/patient" method="POST">
            <table>
                    <caption>Записать пациента на прием</caption>
            		<tr>
            			<td align="right" >Name : </td>
            			<td>
            				<input type="text" name="name">
            			</td>
            		</tr>

            		<tr>
            			<td align="right" >Doctors specialization : </td>
            			<td>
            				<input type="text" name="specialization">
            			</td>
            		</tr>
            		<tr>
            			<td><input type="submit" align="center" value="Submit"/></td>
            		</tr>
            	</table>
        </form>
    </body>
</html>