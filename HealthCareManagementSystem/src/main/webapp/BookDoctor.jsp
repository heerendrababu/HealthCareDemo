<%@ page import="com.shivintech.model.Doctor" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Doctor Details</title>
    <style>
        div {
            margin-left: 550px;
        }
    </style>
</head>
<body>
    <div>
        <h1>Doctors Details</h1>
        <form action="bookAppointment" method="post">
            Select Date: <input type="date" name="appointmentDate" required /><br><br>
            <table border="2">
                <tr>
                    <th>Name</th>
                    <th>Profession</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Action</th>
                </tr>
                <% 
                ArrayList<Doctor> al = (ArrayList<Doctor>) request.getAttribute("doctorlist");
                if (al != null && !al.isEmpty()) {
                    for (Doctor d : al) {
                %>
                    <form action="bookAppointment" method="post">
                        <tr>
                            <td><%= d.getName() %></td>
                            <td><%= d.getProfession() %></td>
                            <td><%= d.getEmail() %></td>
                            <td><%= d.getMobile() %></td>
                            <td>
                                <input type="hidden" name="doctorId" value="<%= d.getDid() %>" />
                                <input type="hidden" name="doctorName" value="<%= d.getName() %>" />
                                <input type="hidden" name="doctorProfession" value="<%= d.getProfession() %>" />
                                <input type="hidden" name="doctorEmail" value="<%= d.getEmail() %>"/>
                                <input type="hidden" name="doctorMobile" value="<%= d.getMobile() %>" />
                                <input type="hidden" name="appointmentDate" value="<%= request.getParameter("appointmentDate") %>" />
                                <input type="submit" name="bookDoctor" value="Book" />
                            </td>
                        </tr>
                    </form>
                <% 
                    }
                } else {
                %>
                    <tr>
                        <td colspan="5">No doctors available</td>
                    </tr>
                <% 
                }
                %>
            </table>
        </form>
    </div>
</body>
</html>
