function validateName(name){
                var regex =/^[a-zA-Z ]*$/;
                if(!regex.test(name)){
                                alert("Name can contain only letters and spaces");
                                document.customer_update.name.focus();
                                return false;
                }
}
function validateContactNo(contact_no){
                var length=contact_no.length;
                var regex=/^[0-9]+$/;
                if(!regex.test(contact_no)){
                                alert("Enter only digits");
                                document.customer_update.contact_no.focus();
                    return false;
                }
                if(length!=10){
                                alert("Enter 10 digit contact number");
                                document.customer_update.contact_no.focus();
                    return false;
                }              
}
function validateEmail(email)   
{  
                var str=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                if (!str.test(email))  
                {  
                                alert("Enter a valid email address \n Ex-abc@gmail.com")  ;
                                document.customer_update.email.focus();
                    return false;
                }     
} 
function validateCardNo(card_no){
                var length=card_no.length;
                if(length!=16){
                                alert("Valid Card No contains 16 digits");
                                document.customer_update.card_no.focus();
                    return false;
                }
}
function validateForm(){

                name=document.getElementById("name").value;
             
                address=document.getElementById("address").value;
                contact_no=document.getElementById("contact_no").value;
 
         
                email=document.getElementById("email").value;
                card_no=document.getElementById("card_no").value;
         
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
                                if(contact_no==null || contact_no==""){  
                                              alert("Contact no. can't be blank");  
                                              return false;   
                                }
                                if(validateContactNo(contact_no)==false){
                                                return false;
                                }

                               
                              
                                if(email==null || email==""){  
                                              alert("Email ID can't be blank");  
                                              return false;   
                                }
                                if(validateEmail(email)==false){
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
function clearForm(){  
                document.getElementById("name").value="";
                document.getElementById("address").value="";
                document.getElementById("contact_no").value="";
                document.getElementById("country").value="";
                document.getElementById("state").value="";
                document.getElementById("email").value="";
                document.getElementById("card_no").value="";
    return false;
}
