<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Customer</title>
</head>
<body>
<div style="height:40px;width:100%;background-color:skyblue"> <h2 style="margin-left:20px;margin-top:20px;color:white"> Add Customer </h2></div>
 <div style="margin-top:20px">

<form action="CustomerController" method="POST">
 <table>
  <tr>
      <td> First Name: </td>
       <td><input type="text" name="firstName" pattern="[A-Za-z]{3,25}" title="Enter Valid Input"></td>
 </tr>
 <tr>
      <td> Last Name: </td>
       <td><input type="text" name="lastName" required></td>
 </tr>
 <tr>
       <td> Email: </td>
        <td><input type="text" name="email" required></td>
 </tr>
  <tr>
       <td> Mobile Number: </td>
       <td><input type="text" name="mbNum" pattern=[6-9]{1}[0-9]{9} title="Enter valid MobNum"></td>
  </tr>
  <tr>
       <td> Gender: </td>
       <td> <input type="radio" id="gender" name="gender" value="male"/> Male
            <input type="radio" id="gender" name="gender" value="female"/> Female</td>
  </tr>
  <tr>
      <td> Age: </td>
      <td><input type="text" name="age" required></td>
 </tr>
  <tr>
       <td> Address: </td>
        <td><input type="text" name="address" required></td>
  </tr>
    <tr>
         <td> Nationality: </td>
         <td><input type="text" name="nationality" required></td>
    </tr>
    <tr>
           <td><input type="submit" name="insertCustomer" value="save" style="margin-left:80px;margin-top:20px;height:20px;width:120px" ></td>
    </tr>
</table>
        </form>
        </div>
        <form action="CustomerController" method="POST">
            <input type="submit" name="displayCustomers" value="ShowDetails" style="margin-left:83px;margin-top:10px;height:20px;width:120px"><br>
        </form>
    </body>
</html>