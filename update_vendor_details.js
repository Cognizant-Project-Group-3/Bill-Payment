/**
 * 
 */
function validateName(name){
	var RegExpression =/^[a-zA-Z ]*$/; 
	if(!RegExpression.test(name)){
		alert("Name can contain only letters and spaces");
		return false;
	}
}
function validateContactNo(contact_no){
	var length=contact_no.length;
	var regex=/^[0-9]+$/;
	if(!regex.test(contact_no)){
		alert("Enter only digits in contact number");
		document.vendor_reg.contact_no.focus();
	    return false;
	}
	if(length!=10){
		alert("Enter 10 digit contact number");
		document.vendor_reg.contact_no.focus();
	    return false;
	}	
}

function validateEmail(email)   
{  
	var str=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if (!str.test(email))  
	{  
		alert("Enter a valid email address \n Ex-abc@gmail.com")  ;
	    return false;
	}     
}   

function validateWebsite(website) {
var regexp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
if(!regexp.test(website)){
	alert("Enter a valid website address \n Ex-https://www.gmail.com");
	return false;
}
}

function validateYOE(yoe){
	var date = new Date();
	var year = date.getFullYear();
	
	if(yoe<1900 || yoe>year){
		alert("YOE should be greater than 1900 and less than current year");
		return false;
	}
	
}

function validateForm(){
	name=document.getElementById("name").value;
	company_reg_no=document.getElementById("company_reg_no").value;
	address=document.getElementById("address").value;
	email=document.getElementById("email").value;
	contact_no=document.getElementById("contact_no").value;
	website=document.getElementById("website").value;
	employee_count=document.getElementById("employee_count").value;
	yoe=document.getElementById("yoe").value;
	if (name==null || name==""){  
		alert("Name can't be blank");  
	  	return false;  
	}
	if(validateName(name)==false){
		return false;
	}

	if(company_reg_no==null || company_reg_no==""){  
	    alert("Company registration number can't be blank");  
	    return false;
	}

	              
	if(address==null || address==""){  
	    alert("Address can't be blank");  
	    return false;   
	}

	

	if(email==null || email==""){  
		alert("Email ID can't be blank");  
		return false;   
	}
	if(validateEmail(email)==false){
		return false;
	}

	if(contact_no==null || contact_no==""){
		alert("Contact No cannot be blank");
		return false;
	}
	if(validateContactNo(contact_no)==false){
		return false;
	}

	if(website==null || website==""){  
	    alert("Website can't be blank");  
	    return false;
	}

	if(validateWebsite(website)==false){
		return false;
	}

	if(employee_count==null || employee_count==""){  
	    alert("Employee count can't be blank");  
	    return false;   
	}
	var regex =/^[a-zA-Z ]*$/;
	if(regex.test(employee_count)){
		alert("Enter only digits for employee count");
		document.vendor_reg.employee_count.focus();
		return false;
	}

	if(yoe==null || yoe==""){  
	    alert("Year of establishment can't be blank");  
	    return false;   
	}
	if(regex.test(yoe)){
		alert("Enter only digits for Year of establishment");
		document.vendor_reg.yoe.focus();
		return false;
	}

	if(validateYOE(yoe)==false){
		return false;
	}

	return true;
}
function clearForm(){  
	document.getElementById("name").value="";
	document.getElementById("company_reg_no").value="";
	document.getElementById("type").value="";
	document.getElementById("address").value="";
	document.getElementById("country").value="";
	document.getElementById("state").value="";
	document.getElementById("email").value="";
	document.getElementById("contact_no").value="";
	document.getElementById("website").value="";
	document.getElementById("employee_count").value="";
	document.getElementById("yoe").value="";
    return false;
}
