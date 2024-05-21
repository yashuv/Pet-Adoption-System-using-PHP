<?php
require_once ("include/config.php");


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Missing or Found Form</title>
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> -->
</head>
<body>


<div id="service-page" class="container">
    <div class="bg">
        <div class="row">           
            <div class="col-sm-12">                         
                <h2 class="title text-center">Service <strong>Request</strong></h2>                                                      
                <div id="gmap" class="service-map">
                </div>
            </div>                  
        </div>      
        <div class="row">   
            <div class="col-sm-8">
            <div class="container">
            <h1 class="title text-center" >Missing or Found Pet Form</h1>
<?php
// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Get the form data
  $petType = $_POST['pet_type']; 
  $contactName = $_POST['contact_name'];
  $contactEmail = $_POST['contact_email'];
  $contactPhone = $_POST['contact_phone'];
  $description = $_POST['description'];

    // // Create a connection to the database
    $conn = mysqli_connect('localhost', 'root', '', 'db_ecommerce');

    // Check if the connection was successful
    if ($conn->connect_error) {
        die('Connection failed: ' . $conn->connect_error);
    }

    //Create the table if it doesn't exist
    //Insert the form data into the table
    $query = "INSERT INTO missing_or_found (pet_type, contact_name, contact_email, contact_phone, description) VALUES ('$petType', '$contactName', '$contactEmail', '$contactPhone', '$description')";

    mysqli_query($conn, $query);

    if ($conn->query($query) === TRUE) {
        // Display a success message
        echo '<p>Thank you for submitting the form!</p>';
    } else {
        echo 'Error: ' . $sql . '<br>' . $conn->error;
    }

    // Validate the form data (you can add more validation if needed)
    if (empty($petType) || empty($contactName) || empty($contactEmail) || empty($contactPhone) || empty($description)) {
    echo '<p>Please fill in all the fields.</p>';
    } else {
        // Save the form data to a database or send an email, etc.
        // You can add your own logic here

        // Display a success message
        echo '<p>Thank you for submitting the form!</p>';

    }


    // redirect(web_root."index.php?q=profile");
}

?>
        <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" enctype="multipart/form-data">
            <div class="form-group">
                <label for="missing_or_found">Pet Circumstances:</label>
                <br>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="missing_or_found" id="missing" value="missing" required>
                    <label class="form-check-label" for="missing">Lost Pet</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="missing_or_found" id="found" value="found" required>
                    <label class="form-check-label" for="found">Found Pet</label>
                </div>
            </div>

            <div class="form-group">
                <label for="pet_type">Pet Type:</label>
                <input type="text" name="pet_type" id="pet_type" class="form-control" required>
            </div>

            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="contact_name">Contact Name:</label>
                    <input type="text" name="contact_name" id="contact_name" class="form-control" placeholder="First and Last Name" required>
                </div>

                <div class="form-group col-md-6">
                    <label for="contact_email">Contact Email:</label>
                    <input type="email" name="contact_email" id="contact_email" class="form-control" placeholder="E-mail" required>
                </div>
            </div>

            <div class="form-group">
                <label for="contact_phone">Phone Number:</label>
                <input type="tel" name="contact_phone" id="contact_phone" class="form-control" placeholder="### ### ####" required>
            </div>

            <div class="form-group">
                <label for="description">Description:</label>
                <textarea name="description" id="description" rows="5" class="form-control" required></textarea>
            </div>

            <div class="form-group">
                <label for="image">Image:</label>
                <input type="file" name="image" id="image" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
            </div>            
        </div>  
    </div>  
</div><!--/#service-page-->
<?php
require_once("theme/templates.php");
?>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    
</body>
</html>