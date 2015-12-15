<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Confirmation Details</title>

</head>

<script type="text/javascript">
function validateForm(){  
	var Customer_Id=document.payment_confirmation.Customer_Id.value;  
	var Vendor_Type= document.payment_confirmation.Vendor_Type.value;
	var Vendor_Name=document.payment_confirmation.Vendor_Name.value;
	var Pending_Amount=document.payment_confirmation.Pending_Amount.value;
	var Payment_Date=document.payment_confirmation.Payment_Date.value;
	var Amount_To_Pay=document.payment_confirmation.Amount_To_Pay.value;
	var Card_Type=document.wwpayment_confirmation.Card_Type.value;
	var Card_Number=document.payment_confirmation.Card_Number.value;
	var Confirm_Card_Number=document.payment_confirmation.Confirm_Card_Number.value;
	var CVV=document.payment_confirmation.CVV.value;
	
	/* function retr_dec(numStr) {
	    var pieces = numStr.split(".");
	    return pieces[1].length;
	} */
	
	if (Customer_Id==null || Customer_Id==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (Vendor_Type==null || Vendor_Type==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (Vendor_Name==null || Vendor_Name==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (Pending_Amount==null || Pending_Amount==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (Payment_Date==null || Payment_Date==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (Amount_To_Pay==null || Amount_To_Pay==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (Card_Type==null || Card_Type==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (Card_Number==null || Card_Number==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (Confirm_Card_Number==null || Confirm_Card_Number==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	if (CVV==null || CVV==""){  
		  alert("Name can't be blank");  
		  return false;  
		}
	
	/* if (retr_dec(Amount_To_Pay)<3){  
		  alert("Id can't be blank");  
		  return false;  
		} */
	
}
</script>

<body>
            <form name="payment_confirmation"  action="UpdatePendingAmountServlet" onsubmit="return validateForm()" method="post"  >
          CUSTOMER ID :<input type="text" name="Customer_Id" value="${Customer_Id}" readonly/><br/>
          VENDOR TYPE: <input type="text" name="Vendor_Type" value="${Vendor_Type}" readonly/><br/>
          VENDOR NAME: <input type="text" name="Vendor_Name" value="${Vendor_Name}" readonly/><br/>
          PENDING AMOUNT :<input type="text" name="Pending_Amount" value="${Pending_Amount}"readonly/><br/>
          PAYMENT DATE :<input type="text" name="Payment_Date" value="${Current_Date}" readonly/><br>   
          AMOUNT TO PAY :<input type="text" name="Amount_To_Pay" ><br>
          CARD TYPE : <input type="text" name="Card_Type" ><br>
          CARD NUMBER : <input type="text" name="Card_Number" ><br>
          CONFIRM CARD NUMBER : <input type="text" name="Confirm_Card_Number" ><br>
          CARD VALIDITY :<br> 
          MM :<input type="text" name="MM" ><br>
          YYYY :<input type="text" name="YYYY" ><br>         
          CVV :<input type="text" name="CVV" ><br>
         <input type="submit" value="Pay"/>
         <input type="reset" value="Reset" />
          
          
          </form>
            
            
</body>
</html>
