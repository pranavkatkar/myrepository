<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Spring MVC Multiple File Upload</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <style>
.bg-1 { 
    background-color: #1abc9c; /* Green */
    color: #ffffff;
}

<style>
.container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
}

</style>
  

<script>
$(document).ready(function() {
    //add more file components if Add is clicked
    $('#addFile').click(function() {
        var fileIndex = $('#fileTable tr').children().length - 1;
        $('#fileTable').append(
                '<tr><td>'+
                '   <input type="file" name="files['+ fileIndex +']" />'+
                '</td></tr>');
    });
     
});
</script>
</head>
<body>
<h1>Single Filee</h1>

<div class="container-fluid bg-1 text-center"> 
<form method="post" enctype="multipart/form-data" action="save1">
		Upload File: <input type="file" name="file">
		<br /><br />
		Description: <input type="text" name="desc"/>
		<br/><br/><input type="submit" value="Upload"> 
	</form>
	</div>
</body>
</html>