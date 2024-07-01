<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="com.mysql.cj.jdbc.Driver" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 

<html> 
<head> 
<title>Connection with MySQL database</title> 
</head> 
<body>
<h1>Connection status</h1>
<%
    String connectionURL = "jdbc:mysql://localhost:3306/rentigo";
    String username = "root";
    String password = "shoot";

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Establish the connection
        try (Connection connection = DriverManager.getConnection(connectionURL, username, password)) {
            
            if (!connection.isClosed()) {
%>
    <font size="+3" color="green"><b>
    <%
                out.println("Successfully connected to MySQL server using TCP/IP...");
    %>
    </br>
    </b></font>

    <table border="1">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>mobile</th>
            <th>address</th>
            <th>rentedvehicles</th>
            <th>email</th> 
        </tr>
    <%
                String query = "SELECT * FROM vehicleowner"; // Replace 'tablename' with your actual table name
                try (Statement statement = connection.createStatement();
                     ResultSet resultSet = statement.executeQuery(query)) {

                    while (resultSet.next()) {
    %>
        <tr>
            <td><%= resultSet.getString("id") %></td> <!-- Replace 'column1' with your actual column name -->
            <td><%= resultSet.getString("name") %></td> <!-- Replace 'column2' with your actual column name -->
            <td><%= resultSet.getString("mobile") %></td> <!-- Replace 'column1' with your actual column name -->
            <td><%= resultSet.getString("address") %></td> <!-- Replace 'column2' with your actual column name -->
            <td><%= resultSet.getString("rentedvehicles") %></td> <!-- Replace 'column1' with your actual column name -->
            <td><%= resultSet.getString("email") %></td> <!-- Replace 'column1' with your actual column name -->
            <!-- Add more columns as per your table structure -->
        </tr>
    <%
                    }
                }
            }
        } catch (SQLException ex) {
    %>
    <font size="+3" color="red"><b>
    <%
            out.println("Unable to connect to the database.");
            out.println(ex.getMessage());
    %>
    </b></font>
    <%
        }
    } catch (ClassNotFoundException ex) {
    %>
    <font size="+3" color="red"><b>
    <%
        out.println("MySQL JDBC Driver not found.");
        out.println(ex.getMessage());
    %>
    </b></font>
    <%
    }
%>
</table>
</body> 
</html>
