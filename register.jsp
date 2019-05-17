<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<title>Registration Page</title>
<script>

$(document).ready(function(){
	$("#formsubmit").click(function(){
		submitForm();
	})

});
function submitForm(){
    //var urlAppender  =  $("input#urlAppender").val();
   // var path = "<%=request.getContextPath()%>";
    var path          =  $("input#contextPath").val();
    console.log("path="+path);
	var firstname    =  $("#fname").val();
	var lastname     =  $("#lname").val();
	var age          =  $("#age").val();
	$.ajax({
		url:path+"/checkValidAge",
		method:"POST",
		dataType:"json",
		data:{
			firstname:firstname,
			lastname:lastname,
			age:age
		},
		success:function(data,textStatus,jqXHR){
			if(data.status=="invalidage"){
				console.log("Not eligible to vote");
			}else{
				console.log("Eligible to vote");
			}		
		}
	});
	
}
</script>
</head>
<body>
	<div id="registerdiv">
		<label>FirstName</label>
		<input type="text" name="firstname" id="fname">
		<label>LastName</label>
		<input type="text" name="lastname" id="lname">
		<label>Age</label>
		<input type="text" name="age" id="age">
		<button id="formsubmit">Register</button>
	</div>
	<input type="hidden" id="contextPath" value="<%=request.getContextPath()%>" />
</body>
</html>