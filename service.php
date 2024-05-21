<body>
<div id="service-page" class="container">
    <div class="bg">
        <div class="row">           
            <div class="col-sm-12">                         
                <h2 class="title text-center"> Request <strong> Service </strong></h2>  

                <div id="gmap" class="service-map">
                </div>
            </div>                  
        </div>      
        <div class="row">   
            <div class="col-sm-8">
                <div class="service-form">
                    <h2 class="title text-center">Book your Appointment</h2>
                    <div class="status alert alert-success" style="display: none"></div>
                    <form id="main-service-form" class="service-form row" name="service-form" method="post" enctype="multipart/form-data">
                        <div class="form-group col-md-6">
                            <input type="text" name="name" class="form-control" required="required" placeholder="Name">
                        </div>
                        <div class="form-group col-md-6">
                            <input type="text" name="contact" class="form-control" required="required" placeholder="Contact">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="text" name="address" class="form-control" required="required" placeholder="Address">
                        </div>
                        <div class="form-group col-md-12">
                            <select name="pet-type" class="form-control" required="required">
                                <option value="">Select Pet Type</option>
                                <option value="dog">Dog</option>
                                <option value="cat">Cat</option>
                                <option value="rabbit">Rabbit</option>
                            </select>
                        </div>
                        <div class="form-group col-md-12">
                            <textarea name="pet-description" class="form-control" required="required" placeholder="Pet Description (Age, Breed, Gender)" rows="3"></textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <input type="file" name="pet-image" class="form-control" required="required">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="date" name="service-date" class="form-control" required="required" placeholder="Service Date">
                        </div>
                        <div class="form-group col-md-12">
                            <input type="text" name="service-duration" class="form-control" required="required" placeholder="Duration of Service">
                        </div>
                        <div class="form-group col-md-12">
                            <textarea name="additional-info" id="additional-info" required="required" class="form-control" rows="8" placeholder="Additional Information"></textarea>
                        </div>                        
                        <div class="form-group col-md-12">
                            <input type="submit" name="submit" class="btn btn-primary pull-right" value="Book Appointment">
                        </div>
                    </form>
                </div>
            </div>

            <div class="col-sm-4">
            <div class="service-info">
    <div class="text-center">
        <img src="images/home/petservice.jpeg" alt="" class="img-responsive" style="width: 500px; height: 550px;">
    </div>
</div>


            <p><h2 class="title text-center">Service Info</h2> </p>    
        </div>
        <address>
            <p>Pet Companion</p>
            
            <p>Thapathali Street,Kathmandu, Nepal</p>
            <p>Phone: 123-456-7890</p>
          
        </address>
        <div class="social-networks">
            <h2 class="title text-center">Social Networking</h2>
            <ul>
                <li>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                </li>
      </div>
    </div>
</div>

<script>
    if (window.history.replaceState) {
  window.history.replaceState(null, null, window.location.href);
}
</script>

</body>

<?php
// ob_start(); // Start output buffering

// Check if a session is already started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// # echo all the SESSION variables
// echo '<pre>';
// print_r($_SESSION);
// echo '</pre>';




// Check if the user is logged in
if (!isset($_SESSION['CUSID'])){
    // If the user is not logged in, redirect them to the login page
    // header('Location: login.php');

    // wait for 2 seconds before redirecting
    sleep(1);

    echo '<script>alert("You must login to submit the Service form!");</script>';
    // redirect(web_root."index.php");
    exit();
}
// else{
//     # echo $_SESSION['USERID'] in alert
//     echo '<script>alert("You are logged in as ' . $_SESSION['CUSID'] . ' '. $_SESSION['CUSNAME'] . '");</script>';
// }

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Get the form data
    $name = $_POST['name'];
    $contact = $_POST['contact'];
    $address = $_POST['address'];
    $petType = $_POST['pet-type'];
    $petDescription = $_POST['pet-description'];
    $petImage = $_FILES['pet-image']['tmp_name']; // File data is stored in the $_FILES array
    $serviceDate = $_POST['service-date'];
    $serviceDuration = $_POST['service-duration'];
    $additionalInfo = $_POST['additional-info'];
    // Get the customer ID from the session
    $customerId = $_SESSION['CUSID'];

    // Handle the file upload
    $target_dir = "customer/service_pet/";
    $target_file = $target_dir . basename($_FILES["pet-image"]["name"]);
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

    // Check if image file is a actual image or fake image
    $check = getimagesize($_FILES["pet-image"]["tmp_name"]);
    if($check !== false) {
        if (move_uploaded_file($_FILES["pet-image"]["tmp_name"], $target_file)) {
            // echo "The file ". htmlspecialchars( basename( $_FILES["pet-image"]["name"])). " has been uploaded.";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    } else {
        echo "File is not an image.";
    }

    # console log the data

    // Create a connection to the database
    $conn = new mysqli('localhost', 'root', '', 'db_ecommerce');

    // Check if the connection was successful
    if ($conn->connect_error) {
        die('Connection failed: ' . $conn->connect_error);
    }

    // Prepare the SQL query
    $query = "INSERT INTO service (customer_id, name, contact, address, pet_type, pet_description, pet_image, service_date, service_duration, additional_info) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

    // Prepare the statement
    $stmt = $conn->prepare($query);

    // Bind the variables to the query parameters
    $stmt->bind_param("isssssssss", $customerId, $name, $contact, $address, $petType, $petDescription, $target_file, $serviceDate, $serviceDuration, $additionalInfo);

    // Execute the query
    $stmt->execute();

    if (($stmt->affected_rows === 1) && (!empty($petType) || !empty($contact) || !empty($name) || !empty($address) || !empty($petDescription))) {
        // Display a success message
        echo '<script>alert("Thank you for submitting the form!");</script>';
    }
    if ($stmt->errno === 1062) {
        // Duplicate entry error
        echo '<script>alert("Duplicate entry! Please make sure the data is unique.");</script>';
    } else {
        // Other error
        echo 'Error: ' . $stmt->error;
    }

    // // Validate the form data (you can add more validation if needed)
    // if (empty($petType) || empty($contact) || empty($name) || empty($address) || empty($petDescription)) {
    //     echo '<p>Please fill in all the fields.</p>';
    // } else {
    //     // Display a success message
    //     echo '<p>Thank you for submitting the form!</p>';
    // }

    // redirect(web_root."index.php?q=profile");
}

// ob_end_flush(); // Send the output and turn off output buffering
?>