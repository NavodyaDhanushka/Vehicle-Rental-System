<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Form</title>
<link rel="stylesheet" type="text/css" href="/payment.css">

<style>
  .container {
            background-color: #969393;
            border-radius: 5px;
            padding: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
</style>
</head>
<body>



  <%
    
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
    <script>
    function validateCardNumber() {
        var cardNumber = document.getElementById("number").value;
        // Remove any non-numeric characters
        cardNumber = cardNumber.replace(/\D/g, '');
        // Ensure the length is 16
        if (cardNumber.length !== 16) {
            alert("Please enter a valid 16-digit card number.");
            return false;
        }
        return true;
    }

    function addSlash() {
        var input = document.getElementById("e-date");
        var val = input.value;

        if (val.length === 2 && /^\d\d$/.test(val)) {
            input.value = val + '/'; // Add a slash after the first two characters
        }
        else if (val.length === 5 && /^\d\d\/\d\d$/.test(val)) {
            var parts = val.split('/'); // Split the string into month and year
            var month = parseInt(parts[0], 10); // Convert month to integer
            var year = parseInt(parts[1], 10); // Convert year to integer

            if (month >= 1 && month <= 12 && year >= new Date().getFullYear() % 100) {
                return true; // Valid expiration date
            } else {
                alert("Please enter a valid expiration date in the format MM/YY.");
                return false; // Invalid expiration date
            }
        }
    }

    </script>
    
  
    

    <div class="container">
        <div class="left">
            <p>Payment Methods</p>
            <hr style="border: 1px solid #ccc; margin: 0 15px;">
            <div class="method">
                <div onclick="doFun()" id="tColorA" style="color: greenyellow;">
                    <i class="fa-solid fa-credit-card" style="color: greenyellow;"></i>Payment
                    by card
                </div>
                <div onclick="doFun()" id="toColorB">
                    <i class="fa-solid fa-building-columns"></i>Internet Banks
                </div>
                <div onclick="doFun()" id="toColorC">
                    <i class="fa-solid fa-wallet"></i>Apple/Google Pay
                </div>
            </div>
            <hr style="border: 1px solid #ccc; margin: 0 15px;">
        </div>
        <div class="center">
            <a href="https://www.shift4shop.com/credit-card-logos.html"><img
                alt="Credit Card Logs" title="Credit Card Logos"
                src="https://www.shift4shop.com/images/credit-card-logos/cc-lg-4.png"
                width="250" height="auto" /></a>
        </div>
        <hr style="border: 1px solid #ccc; margin: 0 15px;">
        <div class="card-details">
      <h3>Total amount: <%= request.getParameter("id") %></h3> 
            
            
            
            <form action="payment_submit" method="post"
                onsubmit="return validateCardNumber()">
                <p>Card Number</p>
                <div class="c-number" id="c-number">
                    <input id="number" class="cs-number" name="crdNo"
                        placeholder="Card Number" maxlength="16" required> <i
                        class="fa-solid fa-credit-card" style="margin: 0;"></i>
                </div>
                <div class="c-details">
                    <div>
                        <p>Expire Date</p>
                        <input id="e-date" class="cc-exp" name="expDate"
                            placeholder="MM/YY" maxlength="5" required onkeyup="addSlash()"
                            required>
                    </div>
                    <div>
                        <p>CVV</p>
                        <div class="cvv-box" id="cvv-box"></div>
                        <input id="cvv" class="cc-cvv" name="cvv" placeholder="CVV"
                            maxlength="3" required> <i
                            class="fa-solid fa-circle-question"
                            title="3 digits on the back of the card" style="cursor: pointer;"></i>
                    </div>
                </div>
                <div class="email">
                    <p>Email</p>
                    <input type="email" name="email" placeholder="example@email.com"
                        id="email" required>
                </div>
                <!-- Hidden field to store the ID parameter -->
                <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
                
               
             
                <button>SUBMIT NOW</button>
                
            </form>
        </div>

        <div class="right">
            <p>Order Information</p>
            <hr style="border: 1px solid #ccc; margin: 0 15px;">
            <div class="details">
                <div style="font-weight: bold; padding: 3px 0;">Order
                    description</div>
                <div style="padding: 3px 0;">Test payment</div>
            </div>
            <hr style="border: 1px solid #ccc; margin: 0 15px;">
            <a href="https://www.shift4shop.com/credit-card-logos.html"><img
                alt="Credit Card Logos" title="Credit Card Logos"
                src="https://www.shift4shop.com/images/credit-card-logos/cc-lg-4.png"
                width="100%" height="auto" /></a>
        </div>
    </div>
    
    

</body>
</html>
