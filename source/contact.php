<!DOCTYPE html>
<html>
<head>
    <title>Contact SwiftCart</title>
            <link rel="stylesheet" href="../css/templatemo-style.css">

</head>
<body>




<?php include "header.php" ?>
<?php include "sidebar.php" ?>


<div style="margin: 3% 0 0;background: #202020">
<!-- start contact -->
    	<section id="contact">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-12">
        <h2 align="center"  style="font-size: 55px;color: white">CONTACT <span style="color: #28A6E8;      font-family: 'Open Sans', sans-serif;">SwiftCart</span></h2>
    				</div>
    				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInLeft" data-wow-offset="50" data-wow-delay="0.9s">
    					<form action="../login-system/mail.php" method="post">
    						<label style="color: white">NAME</label>
    						<input name="fullname" type="text" class="form-control" id="fullname" required>
   						  	
                            <label style="color: white">EMAIL</label>
    						<input style="margin-left: -0.4%" name="email" type="email" class="form-control" id="email" required>

                            <label style="color: white">Subject</label>
                            <input name="subject" type="text" class="form-control" id="subject" required>
   						  	
                            <label style="color: white">MESSAGE</label>
    						<textarea name="message" rows="4" class="form-control" id="message" required></textarea>
    						
                            <input type="submit" class="form-control">
    					</form>
    				</div>
    				<div class="col-md-6 col-sm-6 col-xs-12 wow fadeInRight" data-wow-offset="50" data-wow-delay="0.6s">
    					<address>
    						<p style="font-weight: bold;font-size: 20px;color: #00FFFF;text-align: right;">Any Queston ?</p>
    						<p class="address-content">Share Your Suggestions</p>
    						<label style="color: white;font-size: 20px"><b> OUR ADDRESS</b> </label>
    						<p style="color: white"><i class="fa fa-phone"></i> <a style="color: white" href="tel:+923398887746">+92 339 8887746, +92 313 5247297, +92 332 8639350</a></p>
    						<p style="color: white; font-size: 13px"><i class="fa fa-envelope-o"></i> muhammadzik124@gmail.com, mahabaig7@gmaill.com, shahlizaahmed27@gmail.com</p>
    						<p style="color: white"><i class="fa fa-map-marker"></i> CR-22, RIMMS, NUST, H-12, Islamabad, Pakistan</p>
    					</address>
    					
    				</div>
    			</div>
    		</div>
    	</section>
    	<!-- end contact -->

        </div>

<?php include "address.php" ?>

<?php include "footer.php" ?>

</body>
</html>
