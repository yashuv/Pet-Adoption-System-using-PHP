<?php 
	  if (!isset($_SESSION['USERID'])){
      redirect(web_root."admin/index.php");
     } 
?>
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">List of Service Request</h1>
        </div>
    </div>
    <form>
        <div class="table-responsive">
            <table id="dash-table" class="table table-striped table-bordered table-hover" style="font-size:12px" cellspacing="0">
                <thead>
                    <tr>
                        <th>Customer ID</th>
                        <th>Name</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Pet Type</th>
                        <th>Pet Description</th>
                        <th>Pet Image</th>
                        <th>Service Date</th>
                        <th>Service Duration</th>
                        <th>Additional Info</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $mydb->setQuery("SELECT DISTINCT * FROM `service`");
                    $cur = $mydb->loadResultList();

                    foreach ($cur as $result) {
                        echo '<tr>';
                        echo '<td>' . $result->customer_id . '</td>';
                        echo '<td>' . $result->name . '</td>';
                        echo '<td>' . $result->contact . '</td>';
                        echo '<td>' . $result->address . '</td>';
                        echo '<td>' . $result->pet_type . '</td>';
                        echo '<td>' . $result->pet_description . '</td>';
                        echo '<td>' . $result->pet_image . '</td>';
                        echo '<td>' . $result->service_date . '</td>';
                        echo '<td>' . $result->service_duration . '</td>';
                        echo '<td>' . $result->additional_info . '</td>';
                        echo '</tr>';
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </form>
			
			
				</form> 