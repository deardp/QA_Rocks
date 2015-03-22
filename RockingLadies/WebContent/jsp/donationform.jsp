<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=9" />
  <link rel="stylesheet" type="text/css" href="../css/style.css" />
  <script type="text/javascript" src="../js/jquery.min.js"></script>
 <script type="text/javascript" src="../js/image_slide.js"></script>
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
<section >
<center><b><i>Thank you for your donation. God Bless</i></b></center><br/>
<form id=payment style="background-color:pink">
    <fieldset>
        <ol>
            <li>
                <label for=name>Name</label>
 
                <input id=name name=name type=text placeholder="First and last name" required autofocus />
            </li>
            <li>
                <label for=email>Email</label>
                <input id=email name=email type=email placeholder="example@domain.com" required />
            </li>
            <li>
                <label for=phone>Phone</label>
                <input id=phone name=phone type=tel placeholder="Eg. +14445556666" required />
            </li>
        </ol>
    </fieldset>
    <fieldset>
        <legend>Delivery address</legend>
        <ol>
            <li>
                <label for=address>Address</label>
                <textarea id=address name=address rows=5 required>
                </textarea>
            </li>
            <li>
                <label for=postcode>Post Code</label>
                <input id=postcode name=postcode type=text required />
 
            </li>
            <li>
                <label for=country>Country</label>
                <input id=country name=country type=text required />
            </li>
        </ol>
    </fieldset>
    <fieldset>
        <legend>Card Details</legend>
        <ol>
            <li>
            <fieldset>
                <legend>Card Type</legend>
                <ol>
                    <li>
                        <input id=visa name=cardtype type=radio />
                        <label for=visa>VISA</label>
                    </li>
                    <li>
                        <input id=amex name=cardtype type=radio />
                        <label for=amex>AmEx</label>
                    </li>
                    <li>
                        <input id=mastercard name=cardtype type=radio />
                        <label for=mastercard>Mastercard</label>
                    </li>
                </ol>
            </fieldset>
            </li>
            <li>
                <label for=cardnumber>Card Number</label>
                <input id=cardnumber name=cardnumber type=number required />
            </li>
            <li>
                <label for=secure>Security Code</label>
                <input id=secure name=secure type=number required />
            </li>
            <li>
                <label for=namecard>Name on Card</label>
                <input id=namecard name=namecard type=text placeholder="Exact namne as on the card" required />
            </li>
        </ol>
    </fieldset>
    <fieldset>
        <button type=submit>Donate</button>
    </fieldset>
</form>
</section>
</div><!--close site_content--> 
 
  </div><!--close main-->
  
  <div id="footer_container">
    <div id="footer">
	 Website dedicated to <u>Rocking Ladies</u>
    </div><!--close footer-->  
  </div><!--close footer_container-->  
</body>
</html>