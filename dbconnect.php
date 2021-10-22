<?php

require_once('config.php');

function connectDB(){
	$conn = new mysqli(DB_HOST,DB_USERNAME,DB_PASSWORD,DB_NAME);

	if ($conn -> connect_errno) {
	  echo "Failed to connect to MySQL: " . $conn -> connect_error;
	  exit();
	}

	return $conn;
}

connectDB();


function executeQuery($query){
    $conn = connectDB();
	$result = $conn->query($query);

	if($result === true){
		return 1;
		
	}else{
		die($conn->error); return false;
	}

}


function executeSelectQuery($query){
    $conn = connectDB();
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
	    while ($row = $result->fetch_assoc()) {
			$resultSet[] = $row;
		}

		if(!empty($resultSet)){
			return $resultSet;
		}
		return false;
	}else{
		return array();
	}
}

//peoples

function peoplesAPI(){

	$cURLConnection = curl_init();

	$url = 'https://swapi.dev/api/people';

	curl_setopt($cURLConnection, CURLOPT_URL, 'https://swapi.dev/api/people/?page=3');
	curl_setopt($cURLConnection, CURLOPT_RETURNTRANSFER, true);

	$phoneList = curl_exec($cURLConnection);
	curl_close($cURLConnection);

	$jsonArrayResponse = json_decode($phoneList);

	//echo "<pre>";

	//print_r($jsonArrayResponse->results[0]->name);

	$resArray = $jsonArrayResponse->results;

	//print_r($resArray);

	foreach ($resArray as $key => $val) {

		//people

		$name = $val->name;
		$height = $val->height;
		$mass = $val->mass;
		$people_id = explode("/", $val->url);
		$people_id = $people_id[5];
		$status = '1';

		$query = "INSERT into peoples(name, height, mass, pid, status) VALUES('".$name."', '".$height."','".$mass."','".$people_id."','".$status."')";

		executeQuery($query);

		//films

		$films = $val->films;

		foreach ($films as $key => $film) {
			
			$film_id = explode("/", $film);

			$film_id = $film_id[5];

			$query = "INSERT into people_to_film_relations(pid,fid) VALUES('".$people_id."', '".$film_id."')";

			executeQuery($query);


		}

		//vehicles

		$vehicles = $val->vehicles;

		foreach ($vehicles as $key => $vehicle) {
			$vehicle_id = explode("/", $vehicle);
			$vehicle_id = $vehicle_id[5];

			$query = "INSERT into people_to_vehicle_relations(pid,vid) VALUES('".$people_id."', '".$vehicle_id."')";

			executeQuery($query);

		}

		//starships

		$starships = $val->starships;

		foreach ($starships as $key => $starship) {
			$starship_id = explode("/", $starship);
			$starship_id = $starship_id[5];
			$query = "INSERT into people_to_starship_relations(pid,sid) VALUES('".$people_id."', '".$starship_id."')";

			executeQuery($query);
		}
	}

	return 1;

}

//peoplesAPI();

//Planets

function planets(){

	$cURLConnection = curl_init();

	//$url = 'https://swapi.dev/api/planets';

	curl_setopt($cURLConnection, CURLOPT_URL, 'https://swapi.dev/api/planets');
	curl_setopt($cURLConnection, CURLOPT_RETURNTRANSFER, true);

	$phoneList = curl_exec($cURLConnection);
	curl_close($cURLConnection);

	$jsonArrayResponse = json_decode($phoneList);


	$resArray = $jsonArrayResponse->results;




	foreach ($resArray as $key => $val) {

		//planet

		$name = $val->name;
		
		$planet_id = explode("/", $val->url);
		$planet_id = $planet_id[5];
		$status = '1';

		$query = "INSERT into planets(name, pid, status) VALUES('".$name."', '".$planet_id."','".$status."')";

		executeQuery($query);


	}


}

//Films
function filmsAPI(){


    $cURLConnection = curl_init();

	//$url = 'https://swapi.dev/api/films';

	curl_setopt($cURLConnection, CURLOPT_URL, 'https://swapi.dev/api/films');
	curl_setopt($cURLConnection, CURLOPT_RETURNTRANSFER, true);

	$phoneList = curl_exec($cURLConnection);
	curl_close($cURLConnection);

	$jsonArrayResponse = json_decode($phoneList);


	$resArray = $jsonArrayResponse->results;


	foreach ($resArray as $key => $val) {

		//film

		$title = $val->title;
		
		$film_id = explode("/", $val->url);
		$film_id = $film_id[5];
		$status = '1';

		$query = "INSERT into films(name, fid, status) VALUES('".$title."', '".$film_id."','".$status."')";

		executeQuery($query);


	}
}

//vehicles

function vehicles(){



    $cURLConnection = curl_init();

	//$url = 'https://swapi.dev/api/vehicles';

	curl_setopt($cURLConnection, CURLOPT_URL, 'https://swapi.dev/api/vehicles/?page=5');
	curl_setopt($cURLConnection, CURLOPT_RETURNTRANSFER, true);

	$phoneList = curl_exec($cURLConnection);
	curl_close($cURLConnection);

	$jsonArrayResponse = json_decode($phoneList);
    
    /*echo "<pre>";

    print_r($jsonArrayResponse); exit();*/

	$resArray = $jsonArrayResponse->results;



	foreach ($resArray as $key => $val) {

		//vehicle

		$name = $val->name;
		
		$vehicle_id = explode("/", $val->url);
		$vehicle_id = $vehicle_id[5];
		$status = '1';

		$query = "INSERT into vehicles(name, vid, status) VALUES('".$name."', '".$vehicle_id."','".$status."')";

		executeQuery($query);


	}


	
	
}


//vehicles();

//starships

function starships(){
	
	$cURLConnection = curl_init();

	//$url = 'https://swapi.dev/api/starships';

	curl_setopt($cURLConnection, CURLOPT_URL, 'https://swapi.dev/api/starships/?page=4');
	curl_setopt($cURLConnection, CURLOPT_RETURNTRANSFER, true);

	$phoneList = curl_exec($cURLConnection);
	curl_close($cURLConnection);

	$jsonArrayResponse = json_decode($phoneList);
    
    /*echo "<pre>";

    print_r($jsonArrayResponse); exit();*/

	$resArray = $jsonArrayResponse->results;



	foreach ($resArray as $key => $val) {

		//starship

		$name = $val->name;
		
		$starship_id = explode("/", $val->url);
		$starship_id = $starship_id[5];
		$status = '1';

		$query = "INSERT into starships(name, sid, status) VALUES('".$name."', '".$starship_id."','".$status."')";

		executeQuery($query);


	}	
}

starships();




?>