/**
 * 
 */

   
function validateName(name){
	var regex =/^[a-zA-Z ]*$/;
	if(!regex.test(name)){
		alert("Name can contain only letters and spaces");
		document.customer_reg.name.focus();
		return false;
	}
}
function validateEmail(email)   
{  
	var str=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if (!str.test(email))  
	{  
		alert("Enter a valid email address \n Ex-abc@gmail.com")  ;
		document.customer_reg.email.focus();
	    return false;
	}     
} 
function validateCardNo(card_no){
	var length=card_no.length;
	if(length!=16){
		alert("Valid Card No contains 16 digits");
		document.customer_reg.card_no.focus();
	    return false;
	}
}
function validateContactNo(contact_no){
	var length=contact_no.length;
	var regex=/^[0-9]+$/;
	if(!regex.test(contact_no)){
		alert("Enter only digits in contact number");
		document.customer_reg.contact_no.focus();
	    return false;
	}
	if(length!=10){
		alert("Enter 10 digit contact number");
		document.customer_reg.contact_no.focus();
	    return false;
	}	
}
function validateForm(){  
var name=document.customer_reg.name.value;  
var address= document.customer_reg.address.value;
var contact_no= document.customer_reg.contact_no.value;
var email= document.customer_reg.email.value;
var document_detail_no= document.customer_reg.document_detail_no.value;
var card_no= document.customer_reg.card_no.value;
var country= document.customer_reg.country.value;
var vendortype= document.customer_reg.vendortype.value;

if (name==null || name==""){  
  alert("Name can't be blank");  
  return false;  
}
if(validateName(name)==false){
	return false;
}

if(address==null || address==""){  
              alert("Address can't be blank");  
              return false;   
}
if(validateContactNo(contact_no)==false){
	return false;
}

if(country=="SELECT COUNTRY")
{
alert("Select a Country");
return false;
}

if(email==null || email==""){  
              alert("Email ID can't be blank");  
              return false;   
}
if(validateEmail(email)==false){
			return false;
}

if(document_detail_no==null || document_detail_no==""){  
              alert("Document detail number can't be blank");  
              return false;   
}

if(vendortype=="Select VendorType"){  
 	alert("Select VendorType");  
 return false;   
}
if(card_no==null || card_no==""){  
 	alert("Card no. can't be blank");  
 return false;   
}
if(validateCardNo(card_no)==false){
				return false;
}
return true;
}
