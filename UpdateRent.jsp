<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    .main{
    display: flex;
    flex-direction: column;
}
.header{

    order: 1;
    width: 100%;
    /* height: 250px; */
    /* background-color: red; */
}

.body {
    order: 2;
    width: 100%;
    height: 600px;
    /* background-color: blue; */
    display: flex;
    flex-direction: row;
    background-image: url("image/2.jpg");

}
.footer{
    order: 3;
    width: 100%;
    /* height: 250px; */
    /* background-color: green; */
}

.left{
    order: 1;
    width: 50%;
    height: 100%;
    /* background-color: chartreuse; */
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 10px;
}
.right{
    order: 2;
    width: 50%;
    height: 100%;
    display: flex;
    flex-direction: column;
    padding-left: 10px;
    padding-right: 10px;

  
        
}

.r-up{
    order: 1;
    width: 100%;
    height: 30%;
    margin-bottom: 10px;
    margin-top: 20px;
    background-color: azure;

    background: rgba(255, 255, 255, 0.36);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(19.8px);
    -webkit-backdrop-filter: blur(19.8px);
    border: 1px solid rgba(255, 255, 255, 1);

    display: flex;
    justify-content: center;
    align-items: center;

    

}
.r-down{
    order: 2;
    width: 100%;
    height: 60%;
    background-color: brown;

    background: rgba(255, 255, 255, 0.36);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(19.8px);
    -webkit-backdrop-filter: blur(19.8px);
    border: 1px solid rgba(255, 255, 255, 1);

    display: flex;
    flex-direction: row;

}

.l-2{
    display: flex;
    flex-direction: column;
    width: 100%;
    height: 90%;
    padding: 10px 10px;
    gap: 5px;

    background: rgba(255, 255, 255, 0.36);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
    backdrop-filter: blur(19.8px);
    -webkit-backdrop-filter: blur(19.8px);
    border: 1px solid rgba(255, 255, 255, 1);
}

.l-up{
    order: 1;
    width: 100%;
    height: 30%;
    padding: 10px;



}

.r-up-2{
    order: 1;
    width: 80%;
}

.l-down{
    order: 2;
    width: 100%;
    height: 65%;
    display: flex;
    /* justify-content: center; */
    /* align-items: center; */
    

}

.bighead{
    font-family: "Urbanist", sans-serif;
    font-weight: 900;
    font-size: 50px;
    margin-bottom: 0;

}
.midhead{
    font-family: "Urbanist", sans-serif;
    font-weight: 300;
    font-size: 30px;
    margin-top: 0;
    margin-bottom: 0;
   

}
.lowhead{
    font-family: "Urbanist", sans-serif;
    font-weight: 200;
    font-size: 11px;
  

}

.carmain{
    width: 92%;
    border-radius: 16px;
    box-shadow: 30px 40px 30px rgba(0, 0, 0, 0.1);
}

hr{
    margin-left: 0;
}

.r-down-left{
    order: 1;
    width: 50%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 2px;
}
.r-down-left-2{
    order: 1;
    width: 80%;
    height: 50%;
    background-color: #000000;
    border-radius: 16px;
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    font-family: "Urbanist", sans-serif;
    font-weight: 100;
    font-size: 20px;
    border-radius: 16px;
    box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.1);
        
    

    
}

.r-down-right{
    order: 1;
    width: 50%;
    height: 100%;
overflow-y: auto; 
 

}
.r-down-right > p {
    font-family: "Urbanist", sans-serif;
    font-weight: 300;
    font-size: 25px;
    margin-bottom: 0;
}

#total{
    font-family: "Urbanist", sans-serif;
    font-weight: 100;
    font-size: 15px;
}




input[type="text"] {
    width: 80%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Apply styles to the buttons */
input[type="button"],
input[type="submit"] {
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


input[type="button"]:hover,
input[type="submit"]:hover {
    background-color: #565758;
}
    
    
    </style>
  </head>
  

  <body>
     <script>
    function validateForm() {
        const hours = document.getElementById("hours").value.trim(); // Trim whitespace
        const date = new Date(document.getElementById("date").value);
        const now = new Date();

        // Check if hours is not empty and contains only numbers
        if (hours === "" || isNaN(hours)) {
            alert("Please enter a valid number for hours.");
            return false;
        }

        // Convert hours to a number and check if it is within the range 0-23
        const hoursNum = parseFloat(hours);
        if (hoursNum < 0 || hoursNum >= 24) {
            alert("Please enter a valid number of hours (0-23).");
            return false;
        }

        // Check if the date is in the future
        if (date <= now) {
            alert("Date must be in the future.");
            return false;
        }

        return true;
    }
</script>

  
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

    if (!roleCookieExists) {
        response.sendRedirect("login.jsp");
    }
%>

     <%
String id = request.getParameter("id");
String hours = request.getParameter("hours"); // Adding hours parameter
String location = request.getParameter("location");
String date = request.getParameter("date");
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
        <div class="left">
          <div class="l-2">
            <div class="l-up">
              <h1 class="bighead">RENTIGO RENTAL SERVICE </h1>
              <h3 class="midhead">ONLINE</h3>

              <hr style="width: 80%" />
            </div>
            <div class="l-down">
              <img src="image/1.jpeg" alt="" class="carmain" />
            </div>
          </div>
        </div>
        <div class="right">
          <div class="r-up">
            <div class="r-up-2">
              <p class="lowhead">
                At Rentigo, we pride ourselves on delivering unparalleled car rental services with a legacy of excellence. Open 24/7, we ensure you have access to a reliable and diverse fleet of vehicles at any time, day or night. Whether you're planning a spontaneous road trip, need a vehicle for business, or require a convenient ride for your everyday needs, Rentigo is your go-to solution.
              </p>
            </div>
          </div>
          <div class="r-down">
            <div class="r-down-left">
              <div class="r-down-left-2">
                <p>ADDITIONAL</p>

                <p>100/km -450/Hrs</p>
              </div>
            </div>
            <div class="r-down-right">
              <br />
              <p>No of Hours</p>
              <p>Need to rent the car</p>
              <br />

 <form action="UpdateRent" method="post" onsubmit="return validateForm()">
    <input type="hidden" name="id" value="<%= id %>" readonly><br>
    <label for="hours">Hours:</label><br> 
    <input type="text" name="hours" value="<%= hours %>" required><br> <!-- Input for hours -->
    
    <label for="location">Location:</label><br> 
    <input type="text" name="location" value="<%= location %>" required><br> <!-- Input for location -->
    
    <label for="date">Date:</label><br> 
    <input type="date" name="date" value="<%= date %>" required><br> <!-- Input for date -->

    <input type="submit" value="Update">
</form>





   

            </div>
          </div>
        </div>
      </div>
      <div class="footer">
        <div class="container">
          <footer class="py-3 my-4">
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
              <li class="nav-item">
                <a href="#" class="nav-link px-2 text-body-secondary">Home</a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link px-2 text-body-secondary"
                  >Features</a
                >
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link px-2 text-body-secondary"
                  >Pricing</a
                >
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link px-2 text-body-secondary">FAQs</a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link px-2 text-body-secondary">About</a>
              </li>
            </ul>
            <p class="text-center text-body-secondary">© 2024 Rentigo, Inc</p>
          </footer>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    
    
  </body>
</html>
