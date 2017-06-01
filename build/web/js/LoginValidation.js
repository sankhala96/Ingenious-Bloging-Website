$(function(){
	
	$("#username_error").hide();
	$("#password_error").hide();
	
	var error_user = false;
	var error_pass = false;
	
	$("#username").focusout(function(){
		
		check_username();
	});
	
	$("#password").focusout(function(){
		
		check_password();
	});


	function check_username(){
		
		var username_length = $("#username").val().length;
		 if(username_length==0){
			$("#username_error").html("Required");
			$("#username_error").show();
			error_user= true;
		}else{
			$("#username_error").hide();
		}
	}
	
	
	function check_password(){
		
		var password_length = $("#password").val().length;
		 if(password_length==0){
			$("#password_error").html("Required");
			$("#password_error").show();
			error_pass= true;
		}else{
			$("#password_error").hide();
		}
	}
	
	$("#LoginForm").submit(function(){
		
		check_submit();
	});
        
        function check_submit(){
            
                error_user= false;
		error_pass= false;
		
		check_username();
		check_password();
		
		if(error_user == false && error_pass== false){
			
                        $.get('LoginServlet');
			return true;
		} else{
			return false;
		}
		
        }
	
});