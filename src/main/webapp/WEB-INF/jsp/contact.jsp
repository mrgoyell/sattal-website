<!doctype html>
<html lang="en">
<title>SFR|Contact</title>
<jsp:include page="navHeader.jsp"/>
<body>
<jsp:include page="bodyHeader.jsp"/>
<!-- loader -->
<div class="se-pre-con"></div>
    <section class="site-hero overlay page-inside" style="background-image: url(img/sattal-pics/IMG_20200226_102435-min.jpg);background-size:100% 100%;">
      <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
          <div class="col-md-10 text-center">
            <h1 class="heading" data-aos="fade-up">Contact</h1>
            <p class="sub-heading mb-5" data-aos="fade-up" data-aos-delay="100">Get in touch with us.</p>
          </div>
        </div>
        <!-- <a href="#" class="scroll-down">Scroll Down</a> -->
      </div>
    </section>
    <!-- END section -->

    
    <section class="section bg-primary contact-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            
            <form <%--action="/contact-us"--%> id="sendDetails" class="bg-white p-md-5 p-4 mb-5" onsubmit="sendDetails()" style="margin-top: -150px;">
              <div class="row">
                <div class="col-md-6 form-group">
                  <label for="name">Name</label>
                  <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <div class="col-md-6 form-group">
                  <label for="phone">Phone</label>
                  <input type="text" id="phone" name="phone" class="form-control" onkeypress='validate(event)' required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 form-group">
                  <label for="email">Email</label>
                  <input type="email" id="email" name="email" class="form-control" required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 form-group">
                  <label for="message">Write Message</label>
                  <textarea name="message" id="message" name="message" class="form-control " cols="30" rows="8"></textarea>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="submit" value="Send Message" class="btn btn-primary">
                </div>
              </div>
            </form>

          </div>
          <div class="col-md-5">
            <div class="row">
              <div class="col-md-10 ml-auto contact-info" >
                <p><span class="d-block">Address:</span> <span style="font-size:16px">10 Surya Gaon, P.O Bhimtal. Distt. Nainital. Uttarakhand 263102 <br> Nearest Railway Station:Kathgodham, Uttarakhand</span></p>
                <p><span class="d-block">Phone:</span> <span style="font-size:16px">+91 124 354 5453, +919810107116, +917982215338</span></p>
                <p><span class="d-block">Email:</span> <span style="font-size:16px">Info@Sattalforestresort.In</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
<jsp:include page="footer.jsp"/>
    
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    <script src="js/loader.js"></script>
<script>
  function sendDetails() {
    var myform = document.getElementById("sendDetails");
    var fd = new FormData(myform);
    event.preventDefault();
    $.ajax({
      url: "/contact-us",
      data: fd,
      cache: false,
      processData: false,
      contentType: false,
      type: 'POST',
      beforeSend: function () {
      },
      success: function (response) {
        console.log("Hello");
        Swal.fire({
          text: 'Your query has been submitted',
          type: 'success',
        }).then(function() {
                  location.reload();
        });
      },
      complete: function () {
        // Hide image container

      },

      error: function () {
        console.log("Error");
      }
    });
  }

  function validate(evt) {
    var theEvent = evt || window.event;

    // Handle paste
    if (theEvent.type === 'paste') {
      key = event.clipboardData.getData('text/plain');
    } else {
      // Handle key press
      var key = theEvent.keyCode || theEvent.which;
      key = String.fromCharCode(key);
    }
    var regex = /[0-9]|\./;
    if( !regex.test(key) ) {
      theEvent.returnValue = false;
      if(theEvent.preventDefault) theEvent.preventDefault();
    }
  }
</script>
  </body>
</html>