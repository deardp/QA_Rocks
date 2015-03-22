<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css" />
  <script type="text/javascript" src="../js/jquery.min.js"></script>
   <script type="text/javascript" src="../js/image_slide.js"></script>

 <script>
  function openPopUp(el) {
	     var newWin = window.open('www.yahoo.com','name','resizable=no');
	     newWin.focus();
	}
 
  function validate()
  {
	  var form_id = document.getElementById('reguser')
	  var email = form_id.elements["email"];
	  var pass = form_id.elements["pass"];
      var filter = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	  if (!filter.test(email.value)) {
	      alert('Error: Please provide a valid email address');
	      email.focus;
	      return false;
	  }
	  if(pass.value.length==0) {
		  alert('Error: Password should not be blank');
	      pass.focus;
	      return false;
	  }
	  if(pass.value.length < 6) {
		  alert(pass.value.length)
		  alert('Error: Password must contain at least six characters!');
	      pass.focus;
	      return false;
	  }
	  re = /[0-9]/;
      if(!re.test(pass.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        pass.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(pass.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        pass.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(pass.value)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        pass.focus();
        return false;
      }
  }
  </script>
    </head>
    <body>
<div id="main">
    <div id="header">
	  <div id="banner">
	    <div id="welcome">
	      <h1>The Hope</h1>
	    </div><!--close welcome-->
	    <div id="menubar">
          <ul id="menu">
            <li class="current"><a href="../index.html">Home</a></li>
            <li ><a href="../ourwork.html">Our Work</a></li>
            <li><a href="../testimonials.html">News&Events</a></li> 
            <li><a href="../projects.html">Ways To Donate</a></li>
            <li><a href="../contact.html">Contact Us</a></li>
          </ul>
        </div><!--close menubar-->	  
	  </div><!--close banner-->	
    </div><!--close header-->	
    
	<div id="site_content">		

      <div class="slideshow">  
		<ul class="slideshow">
          <li class="show"><img width="900" height="250" src="../images/home_1.jpg" alt="&quot;....a feeling of expectation and desire for a certain thing to happen.&quot;" /></li>
          <li><img width="900" height="250" src="../image/new_one.jpg" alt="&quot;....a feeling of expectation and desire for a certain thing to happen.&quot;" /></li>
          <li><img width="900" height="250" src="../image/d3.jpg" alt="&quot;....a feeling of expectation and desire for a certain thing to happen.&quot;" /></li>
          <li><img width="900" height="250" src="../image/help1.png" alt="&quot;....a feeling of expectation and desire for a certain thing to happen.&quot;" /></li>
          <li><img width="900" height="250" src="../image/jfk.jpg" alt="&quot;....a feeling of expectation and desire for a certain thing to happen.&quot;" /></li>
          <li><img width="900" height="250" src="../image/theresa.jpg" alt="&quot;....a feeling of expectation and desire for a certain thing to happen.&quot;" /></li>
        </ul> 
      </div><!--close slideshow-->	
        <form id="reguser" method="post" onsubmit="return validate();" action="reguser.jsp">
            <center>
            <table border="0" width="80%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">User Registration</th>
                    </tr>

                </thead>
                <tbody>
                    <tr>
                        <td><b>First Name</b></td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td><b>Last Name</b></td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Email</b></td>
                        <td><input type="text" name="email" value="" placeholder="example@domain.com" /><i>(This is your login id.)</i></td>
                    </tr>
                    <tr>
                        <td><b>Password</b></td>
                        <td><input type="password" name="pass" value="" placeholder="minimum 6 charecters"/><i>(Password must contain one capital letter and one number.)</i></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><i>Already registered!!</i> <a href="../index.html">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
</div><!--close site_content--> 
 
  </div><!--close main-->
  
  <div id="footer_container">
    <div id="footer">
	 Website dedicated to <u>Rocking Ladies</u>
    </div><!--close footer-->  
  </div><!--close footer_container-->  
    </body>
</html>