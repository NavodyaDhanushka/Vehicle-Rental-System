<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Rentigo</title>
    <link rel="stylesheet" href="styles/css/istyle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Urbanist:ital,wght@0,100..900;1,100..900&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <style>
      .main {
        display: flex;
        flex-direction: column;
      }
      .header {
        order: 1;
        width: 100%;
      }
      .body {
        order: 2;
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
        background-image: url("image/2.jpg");
      }
      .footer {
        order: 3;
        width: 100%;
      }
      table {
        width: 80%;
        border-collapse: collapse;
        margin-top: 20px;
      }
      th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
      }
      th {
        background-color: #f2f2f2;
      }
      .button {
        padding: 10px 20px;
        margin-right: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        background-color: #000000;
        color: #fff;
        font-family: "Urbanist", sans-serif;
        font-weight: 100;
        font-size: 15px;
      }
      .button:hover {
        background-color: #565758;
      }
    </style>
  </head>
  <body>
    <%
      // Check if the user role cookie exists
      Cookie[] cookies = request.getCookies();
      boolean roleCookieExists = false;
      if (cookies != null) {
          for (Cookie cookie : cookies) {
              if (cookie.getName().equals("user_role")) {
                  roleCookieExists = true;
                  break;
              }
          }
      }
      
      // If the user role cookie doesn't exist, redirect to login.jsp
      if (!roleCookieExists) {
          response.sendRedirect("login.jsp");
      }
    %>
    <div class="main">
       <div class="header">
        <div class="container">
          <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
            <a href="customerhome.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
              <img src="image/rentigologo.png" alt="Rentigo Logo" width="40" height="32" class="bi me-2">
              <span class="fs-4">RENTIGO</span>
            </a>
          <ul class="nav nav-pills">
              <li class="nav-item">
                <a href="customerhome.jsp" class="nav-link active" aria-current="page">Home</a>
              </li>
              <li class="nav-item">
                <a href="DisplayServlet2" class="nav-link">Rent a Vehicle</a>
              </li>
              <li class="nav-item"><a href="DisServlet" class="nav-link">Rentals</a></li>
              <li class="nav-item"><form action="logout" method="post">
    <input type="submit" value="Logout">
</form></li>

           <!--    <li class="nav-item"><a href="#" class="nav-link">About</a></li> -->
            </ul>
          </header>
        </div>
      </div>
      

      
    <div class="body">
    <h1>Vehicle Hours</h1>
    <table border="1">
        <tr>
            <th>Location</th>
            <th>Date</th>
            <th>Hours</th>
            <th>Actions</th> <!-- Add Actions column for buttons -->
        </tr>
        <c:forEach var="rent" items="${ab}">
            <tr>
                <td>${rent.location}</td>
                <td>${rent.date}</td>
                <td>${rent.hours}</td>
                <td>
                    <!-- Update Button -->
                    <c:url value="UpdateRent.jsp" var="Update">
                        <c:param name="id" value="${rent.id}"/>
                        <c:param name="hours" value="${rent.hours}"/>
                        <c:param name="date" value="${rent.date}"/>
                        <c:param name="location" value="${rent.location}"/>
                    </c:url>
                    <a href="${Update}">
                        <button class="button">Update</button>
                    </a>
                    <!-- Delete Button -->
                    <form action="DeleteRent" method="post" style="display: inline;" onsubmit="showPopup()">
                        <input type="hidden" name="id" value="${rent.id}">
                        <button type="submit" class="button">Delete</button>
                    </form>
                    <form action="payment.jsp" method="post" style="display: inline;">
                        <input type="hidden" name="id" value="${rent.id}">
                        
                        
                        
                        
                        <button type="submit" class="button">Proceed to Pay</button>
                        
                        
                        
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>


      <div class="footer">
        <div class="container">
          <footer class="py-3 my-4">
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
              <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Home</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Features</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Pricing</a></li>
              <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">FAQs</a></li>
				              <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">About</a></li>
            </ul>
            <p class="text-center text-body-secondary">© 2024 Rentigo, Inc</p>
          </footer>
        </div>
      </div>
    </div>
    <script>
      function showPopup() {
        return confirm("Are you sure you want to delete this?");
      }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
				