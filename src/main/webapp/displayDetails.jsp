<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CustomerDetails</title>
    </head>
    <body>
        <div align="center">
        	<h2>Customer Details</h2>
        	<style>
            table {
              border-collapse: collapse;
              width: 100%;
            }

            td, th {
              border: 1px solid #dddddd;
              text-align: left;
              padding: 8px;
            }

            tr:nth-child(even) {
              background-color: #dddddd;
            }
            </style>
        	<table >
        		<tr>
        			<th>FirstName</th>
        			<th>LastName</th>
        			<th>E-mail</th>
        			<th>MobNum</th>
        			<th>Gender</th>
                    <th>Age</th>
                    <th>Address</th>
                   <th>Nationality</th>
        		</tr>
        		<c:forEach items="${customerList}" var="customer">
        		<tr>
        			<td>${customer.firstName}</td>
        			<td>${customer.lastName}</td>
        			<td>${customer.email}</td>
        			<td>${customer.mobile}</td>
        			<td>${customer.gender}</td>
                    <td>${customer.age}</td>
                     <td>${customer.address}</td>
                     <td>${customer.nationality}</td>
        		</tr>
        		</c:forEach>
        	</table>
        </div>
        </form>
        <div style="margin-left:20px;margin-top:50px">
        <form action="index.jsp" >
               <input type="submit"  value="Add Customers"> <br>
        </form>
        </div>
    </body>
</html>