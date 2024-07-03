<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: #f2f2f2;
    }
    .registration-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    table {
        margin: 0 auto;
    }
    td {
        padding: 10px;
    }
    input[type="text"], input[type="email"], input[type="password"], input[type="tel"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    h2 {
        text-align: center;
        color: #333;
    }
</style>
</head>
<body>
   <div class="registration-container">
       <form action="reg" method="post">
           <h2>Doctor Registration</h2>
           <table>
               <tr>
                   <td>Name:</td>
                   <td><input type="text" name="dName" /></td>
               </tr>
               <tr>
                   <td>Email:</td>
                   <td><input type="email" name="dEmail" /></td>
               </tr>
               <tr>
                   <td>Profession:</td>
                   <td><input type="text" name="dProfess" required /></td>
               </tr>
               <tr>
                   <td>Password:</td>
                   <td><input type="password" name="dPass" required /></td>
               </tr>
               <tr>
                   <td>Mobile:</td>
                   <td><input type="tel" name="dMobile" /></td>
               </tr>
               <tr>
                   <td colspan="2" style="text-align: center;">
                       <input type="submit" name="btnReg" value="Click Here" />
                   </td>
               </tr>
           </table>
           <!-- To catch data coming from the controller addObject(), we use getAttribute -->
           <div style="text-align: center; color: red;">
               <%
                   String result = (String) request.getAttribute("res");
                   if (result != null) {
                       out.print(result);
                   }
               %>
           </div>
       </form>
   </div>
</body>
</html>