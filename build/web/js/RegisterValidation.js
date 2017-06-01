// JavaScript Document$(function(){
$(function(){	
	$("#username_error").hide();
	$("#email_error").hide();
	$("#contact_error").hide();
	$("#password_error").hide();
	
	var error_user = false;
	var error_email = false;
	var error_contact = false;
	var error_pass = false;
	
	$("#username").focusout(function(){
		
		check_username();
	});
	
	$("#email").focusout(function(){
		
		check_email();
	});
	
	$("#contact").focusout(function(){
		
		check_contact();
	});
	
	$("#password").focusout(function(){
		
		check_password();
	});


	function check_username(){
		
		var username_length = $("#username").val().length;
		 if(username_length==0){
			$("#username_error").html("*Required");
			$("#username_error").show();
			error_user= true;
		}else{
			$("#username_error").hide();
		}
	}
	
	function check_email(){
		
		var email_length = $("#email").val().length;
		 if(email_length==0){
			$("#email_error").html("*Required");
			$("#email_error").show();
			error_user= true;
		}else{
			$("#email_error").hide();
		}
	}
	
	
	function check_contact(){
		
		var contact_length = $("#contact").val().length;
		 if(contact_length==0){
			$("#contact_error").html("*Required");
			$("#contact_error").show();
			error_pass= true;
		}else{
			$("#contact_error").hide();
		}
	}
	
	function check_password(){
		
		var password_length = $("#password").val().length;
		 if(password_length==0){
			$("#password_error").html("*Required");
			$("#password_error").show();
			error_pass= true;
		}else{
			$("#password_error").hide();
		}
	}
	
	$("#LoginForm").submit(function(){
		
		
		 error_user = false;
		 error_email = false;
		 error_contact = false;
		 error_pass = false;
		
		check_username();
		check_email();
		check_contact();
		check_password();
		
		if(error_user == false && error_email == false && error_contact == false && error_pass== false){
			
			return true;
		} else{
			return false;
		}
		
		});
	
});