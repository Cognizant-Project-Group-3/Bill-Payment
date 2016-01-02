
function validateForm(){
		
	     var Pending_Amount=document.getElementById("Pending_Amount").value;
	     var Amount_To_Pay=document.getElementById("Amount_To_Pay").value;
	     var Card_Type=document.getElementById("Card_Type").value;
	     var Card_Number=document.getElementById("Card_Number").value;
	     var Confirm_Card_Number=document.getElementById("Confirm_Card_Number").value;
	     var CVV=document.getElementById("CVV").value;
	     var YYYY=document.getElementById("YYYY").value;
	     var MM=document.getElementById("MM").value;
	     
	     if (Amount_To_Pay==null || Amount_To_Pay==""){  
	            alert("Enter the amount to pay");  
	            document.payment_confirmation.Amount_To_Pay.focus();
	            return false;  
	          }
	     
	     if(Amount_To_Pay>Pending_Amount){
	    	 alert("Amount to be paid should be less than or equal to pending amount");
	    	 document.payment_confirmation.Amount_To_Pay.focus();
	         return false;
	     }
	     
	     if(Amount_To_Pay<=0)
	    	 {
	    	 alert("Amount to be paid should be greater than zero");
	    	 document.payment_confirmation.Amount_To_Pay.focus();
	         return false;
	    	 }
	     
	     if (Card_Type=="Select Card Type" || Card_Type==""){  
	            alert("Select Appropriate Card Type");
	            document.payment_confirmation.Card_Type.focus();
	            return false;  
	          }
	     
	     if (Card_Number==null || Card_Number==""){  
	            alert("Card Number can't be blank");  
	            document.payment_confirmation.Card_Number.focus();
	            return false;  
	          }
	     
	     if (Confirm_Card_Number==null || Confirm_Card_Number==""){  
	            alert("Confirm Card Number can't be blank"); 
	            document.payment_confirmation.Confirm_Card_Number.focus();
	            return false;  
	          }
	     
	     if(Card_Number!=Confirm_Card_Number){
	    	 alert("Card Number and Confirm Card Number should be same");
	    	 return false;
	     }
	     if(MM==null||MM>12||MM<1){
	    	  alert("Enter valid month");
	    	 return false;
	     }
	     var regex =/^[a-zA-Z ]*$/;
	     if(regex.test(MM))  
	    	 {
	    	 alert("Enter valid month between 1 to 12");
	    	 	return false;
	    	 }
	     if(YYYY==null){
	    	 
   		  alert("Enter valid year");
   		
   		return false;
    }
	     if(regex.test(YYYY))  
    	 {
    	 alert("Enter valid Year");
    	 	return false;
    	 }  
    var date = new Date();
	var year = date.getFullYear();
    if(YYYY<year){
   	  alert("Year of validity should be greater than current year");
		return false;
	}
	     if (CVV==null || CVV=="" || CVV.length!=3){  
	            alert("Enter 3-digit CVV");
	            document.payment_confirmation.CVV.focus();
	            return false;  
	          }
	   
	   
	     
	   
	     return true;
}     
