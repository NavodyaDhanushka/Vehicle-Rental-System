<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Submit Form</title>

<style >
 .container {
            background-color: #969393;
            border-radius: 5px;
            padding: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }</style>
</head>
<body>

<c:forEach var="crd" items="${cardDetailList}">
    <c:set var="crdNo" value="${crd.crdNo}"/>
    <c:set var="expDate" value="${crd.expDate}"/>
    <c:set var="cvv" value="${crd.cvv}"/>
    <c:set var="email" value="${crd.email}"/>
    <c:set var="idcardDetails" value="${crd.idcardDetails}"/>

    <div class="container">
        <div class="left">
            <p>Payment methods</p>
            <hr style="border: 1px solid #ccc; margin: 0 15px;">
            <div class="method">
                <div onclick="doFun()" id="tColorA" style="color: greenyellow;">
                    <i class="fa-solid fa-credit-card" style="color: greenyellow;"></i>Payment by card
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
            <a href="https://www.shift4shop.com/credit-card-logos.html">
                <img alt="Credit Card Logs" title="Credit Card Logos"
                     src="https://www.shift4shop.com/images/credit-card-logos/cc-lg-4.png"
                     width="250" height="auto"/>
            </a>
        </div>
        <hr style="border: 1px solid #ccc; margin: 0 15px;">
        <div class="card-details">
            <form action="#" method="post">
                <p>Card Number</p>
                <div class="c-number" id="c-number">
                    <input id="number" class="cs-number" name="crdNo" value="${crd.crdNo}"
                           placeholder="Card Number" maxlength="19" readonly required>
                    <i class="fa-solid fa-credit-card" style="margin: 0;"></i>
                </div>
                <div class="c-details">
                    <div>
                        <p>Expire Date</p>
                        <input id="e-date" class="cc-exp" name="expDate" value="${crd.expDate}"
                               placeholder="MM/YY" maxlength="5" readonly required>
                    </div>
                    <div>
                        <p>CVV</p>
                        <div class="cvv-box" id="cvv-box"></div>
                        <input id="cvv" class="cc-cvv" name="cvv" value="${crd.cvv}"
                               placeholder="CVV" maxlength="3" readonly required>
                        <i class="fa-solid fa-circle-question"
                           title="3 digits on the back of the card"
                           style="cursor: pointer;"></i>
                    </div>
                </div>
                <div class="email">
                    <p>Email</p>
                    <input type="email" name="email" value="${crd.email}"
                           placeholder="example@email.com" id="email" readonly required>
                </div>

                <c:url var="updateUrl" value="updatecard_details.jsp">
                    <c:param name="idcardDetails" value="${idcardDetails}"/>
                    <c:param name="crdNo" value="${crdNo}"/>
                    <c:param name="expDate" value="${expDate}"/>
                    <c:param name="cvv" value="${cvv}"/>
                    <c:param name="email" value="${email}"/>
                </c:url>

                <a href="${updateUrl}">
                    <input type="button" name="update" value="UPDATE">
                </a>
                <a href="<c:url value='/delete_paynow'>
                            <c:param name='id' value='${idcardDetails}'/></c:url>">
                    <input type="button" name="deletepay" value="DELETE & PAY">
                </a>
                <a href="paymentSuccess.jsp">
                    <input type="button" name="pay" value="PAY NOW">
                </a>
            </form>
        </div>

        <div class="right">
            <p>Order Information</p>
            <hr style="border: 1px solid #ccc; margin: 0 15px;">
            <div class="details">
                <div style="font-weight: bold; padding: 3px 0;">Order description</div>
                <div style="padding: 3px 0;">Test payment</div>
            </div>
            <hr style="border: 1px solid #ccc; margin: 0 15px;">
            <a href="https://www.shift4shop.com/credit-card-logos.html">
                <img alt="Credit Card Logos" title="Credit Card Logos"
                     src="https://www.shift4shop.com/images/credit-card-logos/cc-lg-4.png"
                     width="100%" height="auto"/>
            </a>
        </div>
    </div>
</c:forEach>

</body>
</html>
