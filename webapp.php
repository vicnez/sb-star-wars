
<?php

require_once('dbconnect.php');
require_once('config.php');

if(isset($_GET['page_key']))
$page_key = $_GET['page_key'];

switch ($_GET['page_key']) {
	//PEOPLES
	case 'peoples':
		$sql = "SELECT ppl.id, ppl.name, ppl.height, ppl.mass, GROUP_CONCAT(fm.name) as films, GROUP_CONCAT(veh.name) as vehicles, GROUP_CONCAT(ss.name) as starships FROM peoples as ppl LEFT JOIN people_to_film_relations as pf ON pf.pid = ppl.pid LEFT JOIN films as fm ON fm.fid = pf.fid AND fm.status = '1' LEFT JOIN people_to_vehicle_relations as pv ON pv.pid = ppl.pid LEFT JOIN vehicles as veh ON veh.vid=pv.vid AND veh.status = '1' LEFT JOIN people_to_starship_relations as ps ON ps.pid = ppl.pid LEFT JOIN starships  as ss ON ss.sid = ps.sid AND ss.status = '1' WHERE ppl.status = '1' GROUP BY ppl.pid";
		$result = executeSelectQuery($sql);
		?>
		<?php require_once('header.php'); ?>
		<body>

			<div class="container">
				<?php if (isset($_GET['msg'])) {  $msg = $_GET['msg']; ?>
				
				<div class="alert alert-success alert-dismissible">
				  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				  <?php if($msg == "success"){ ?><strong>Success!</strong> People record deleted. <?php }else{ ?>
				  <p> Failed to delete people<?php }?>
				</div>
				<?php } ?>
				  <h2>Peoples</h2>
				           
				  <table class="table table-striped">
				    <thead>
				      <tr>
				        <th>Name</th>
				        <th>Height</th>
				        <th>Mass</th>
				        <th>Films</th>
				        <th>Vehicles</th>
				        <th>Starships</th>
				        <th>Action</th>
				      </tr>
				    </thead>
				    <tbody>
				    <?php foreach ($result as $key1 => $value) { ?>
				   	
				      <tr>
				        <td><?php echo $value['name']; ?></td>
				        <td><?php echo $value['height']; ?></td>
				        <td><?php echo $value['mass']; ?></td>
				       
				        <td> <?php if(empty($value['films'])){ echo "-";}else{?> <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo<?php echo $key1; ?>">Show Films</button><br> <div id="demo<?php echo $key1; ?>" class="collapse"><?php  $films = explode(",", $value['films']); $films = array_unique($films); foreach ($films as $key => $film) { ?>
	
							  	<p>
						        <button type="button" class="btn btn-default btn-sm">
						          <span class="glyphicon glyphicon-film"></span> <?php echo $film; ?> 
						        </button>
						    	</p>
							 

				        		
				        <?php } ?> </div <?php } ?>  ></td>

				        <td><?php if(empty($value['vehicles'])){ echo "-";}else{ ?>  <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#veh_demo<?php echo $key1; ?>">Show Vehicles</button><br> <div id="veh_demo<?php echo $key1; ?>" class="collapse"><?php $vehicles = explode(",", $value['vehicles']); $vehicles = array_unique($vehicles);  foreach ($vehicles as $key => $vehicle) { ?>
				        	<p>
						        <button type="button" class="btn btn-default btn-sm">
						          <span class="fas fa-truck-monster"></span> <?php echo $vehicle; ?> 
						        </button>
						    </p>	
				        <?php } ?> </div> <?php }  ?></td>

				        <td> <?php if(empty($value['starships'])){ echo "-";}else{?> <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#startship_col<?php echo $key1; ?>">Show Starships</button><br> <div id="startship_col<?php echo $key1; ?>" class="collapse"><?php  $starships = explode(",", $value['starships']); $starships = array_unique($starships); foreach ($starships as $key => $starship) { ?>
	
							  	<p>
						        <button type="button" class="btn btn-default btn-sm">
						          <span class="glyphicon glyphicon-ship"></span> <?php echo $starship; ?> 
						        </button>
						    	</p>
							 

				        		
				        <?php } ?> </div> <?php } ?>  </td>

				        <td> <a href="<?php echo WEBAPP_URL;?>?page_key=people_edit&id=<?php echo $value['id']; ?>"><button type="button" class="btn btn-default btn-sm"> <span class="glyphicon glyphicon-edit"></span> Edit</button></a> <a href="<?php echo WEBAPP_URL;?>?page_key=people_delete&id=<?php echo $value['id']; ?>"><button type="button" class="btn btn-default btn-sm"> <span class="glyphicon glyphicon-trash"></span> Delete </button></a> </td>



				      </tr>

				    <?php } ?>
				    </tbody>
				  </table>
			</div>
		</body>
		<?php
		break;
	//FILMS
	case 'films':
	    $sql = "SELECT fm.name, GROUP_CONCAT(ppl.name) as characters FROM films as fm LEFT JOIN people_to_film_relations as pf ON pf.fid = fm.fid LEFT JOIN peoples as ppl ON ppl.pid = pf.pid GROUP BY fm.id";
		$result = executeSelectQuery($sql);
		//echo "<pre>";
		//print_r($result); exit();
		?>
		<?php require_once('header.php'); ?>
		<body>
			<div class="container">
				  <h2>Films</h2>
				           
				  <table class="table table-striped">
				    <thead>
				      <tr>
				        <th>Film Name</th>
				        <th>Roles</th>
				      </tr>
				    </thead>
				    <tbody>
				    <?php foreach ($result as $key => $value) { ?>
				   	
				      <tr>
				        <td><?php echo $value['name']; ?></td>
				       
				        <td> <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#films<?php echo $key; ?>">Show Films Roles</button><br> <div id="films<?php echo $key; ?>" class="collapse"><?php  $characters = explode(",", $value['characters']); foreach ($characters as $key => $value) { ?>
				        	<p>
						        <button type="button" class="btn btn-default btn-sm">
						          <span class="glyphicon glyphicon-user"></span> <?php echo $value; ?> 
						        </button>
						    </p>	
				        <?php } ?></div></td>




				      </tr>

				    <?php } ?>
				    </tbody>
				  </table>
			</div>
		</body>

		<?php
		break;
		//UPDATE PEOPLE
		case 'update_people':

			$id = $_POST['id'];

			$name = $_POST['name'];

			$height = $_POST['height'];

			$mass = $_POST['mass'];


			if (empty($_POST['name']) || (!preg_match("/^[a-zA-Z ]*$/",$name))) {
			   	echo json_encode(array("status" => "error", "message" => " Please enter valid Name field")); die();
			}

			if (empty($_POST['height']) || (!preg_match("/^[0-9 ]*$/",$height))) {
			   	echo json_encode(array("status" => "error", "message" => " Please enter valid Height field")); die();
			}

			if (empty($_POST['mass']) || (!preg_match("/^[0-9 ]*$/",$mass))) {
			   	echo json_encode(array("status" => "error", "message" => " Please enter valid Mass field")); die();
			}


			$sql = "UPDATE peoples SET name = '".$name."', height = '".$height."', mass = '".$mass."' WHERE id = '".$id."' ";

			$result = executeQuery($sql);

			if($result){
				echo json_encode(array("status" => "Ok", "message" => $name." Updated Successfully."));
			}else{
				echo json_encode(array("status" => "error", "message" => " Failed To Update."));
			}
			
			break;
		//GET SPECIFIC PEOPLE RECORD FOR EDIT
		case 'people_edit':
			$id = $_GET['id'];
			$sql = "SELECT * FROM peoples WHERE id = '".$id."' ";
			$result = executeSelectQuery($sql);
			if(count($result) > 0){
				$people = $result[0];

		?>
		<?php require_once('header.php'); ?>
		<body>

		<div class="container">
			 <div class="alert alert-success alert-dismissible" id="alert_succ" style="display: none;">
			   
			  </div>

			   <div class="alert alert-warning alert-dismissible" id="alert_error" style="display: none;">
			    
			  </div>

			<h2>Update - <?php echo $people['name']; ?> </h2> Info
		<form method="post">
			<input type="hidden" name="id" id="id" value="<?php echo $people['id']; ?>">
		<table class="table "  style="margin-top: 50px;">
			<tbody>
				<tr>
					<td colspan="6">Name</td> <td><input type="text" name="name" value="<?php echo $people['name']; ?>" style="width: 300px"></td>
				</tr>
				<tr>
					<td colspan="6">Height</td> <td ><input type="text" name="height" value="<?php echo $people['height']; ?>" style="width: 300px"></td>
				</tr>
				<tr>
					<td colspan="6">Mass</td> <td><input type="text" name="mass" value="<?php echo $people['mass']; ?>" style="width: 300px"></td>
				</tr>
				<tr><td colspan="6"></td> <td><input type="submit" name="update" id="update" value="Update" class="btn btn-primary"> &nbsp;&nbsp; <a href="<?php echo WEBAPP_URL.'?page_key=peoples'?>" class="btn btn-primary">Back To Peoples</a></td></tr>
			</tbody>
			
		</table>

		</form>
		</div>
		</body>
		<script>
      $(function () {

        $('form').on('submit', function (e) {

          e.preventDefault();
          $("#alert_succ").hide();
          $("#alert_error").hide();
          $.ajax({
            type: 'post',
            url: '<?php echo WEBAPP_URL; ?>/?page_key=update_people',
            data: $('form').serialize(),
            success: function (response) {
              	
                var res = jQuery.parseJSON(response);
		        console.log(res);
		        if(res.status == "Ok"){

		            //alert(res.message);

		            var data = " <a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Success!</strong>"+res.message;
		            $("#alert_succ").show();
		            $("#alert_succ").html(data);

		        }else{
		            
		            var data = "<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Warning!</strong>"+res.message;
		            $("#alert_error").show();
		            $("#alert_error").html(data);
		        }

            }
          });

        });

      });
    </script>

		<?php

			}else{
				header("Location: ".WEBAPP_URL."?page_key=peoples&msg=fail");
			}
			break;
	//DELETE PEOPLE
		case 'people_delete':
		    $id = $_GET['id'];
			$sql = "UPDATE peoples SET status = '0' WHERE id = '".$id."'";
			$result = executeQuery($sql);

			if($result){
				$msg = "success";
			}else{
				$msg = "fail";
			}

			header("Location: ".WEBAPP_URL."?page_key=peoples&msg=".$msg);

			break;
	
	default:
		echo "Not a valid page";
		break;
}

?>


