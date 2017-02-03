<html>
<?php
include "head.php";
require("Dados_BD.php");

?>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">

<script src="js/jquery-1.10.2.js"></script>
<script src="js/Migrate.js"></script>

<style>
#map {
  width:87%;
  height:80%;
  margin-left:12%;
  margin-top:0.5%;
}
</style>

<body>

  <div>
    <form id="nav" action="" >
      <a  id="link" href="addField.php"> Add Field </a>
      <a  id="link" href="addAnimal.php"> Add Animal </a>
      <a  id="link" href=""> Change Field </a>
      <a  id="link" href=""> Animal Info </a>
      <a  id="link" href="session_destroy.php"> Logout </a>
    </form>
  </div>


  <div id="map"></div>
  <script>
  var varinfoWindow;
  var map;
  var rectangle;
  var pos;

  function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: 41.502201, lng: -8.349351},
      zoom: 17,
      mapTypeId: 'hybrid',
      heading: 90,
      rotateControl : true,
      tilt: 0 //se aproximar muito fica em 3D
      // disableDefaultUI: true //Disable the map
    });
    // var infoWindow = new google.maps.InfoWindow({map: map});



    // Try HTML5 geolocation.
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function(position) {
        pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude
        };

        // infoWindow.setPosition(pos);
        // infoWindow.setContent('Location found.');
        var marker = new google.maps.Marker({
          position: pos,
          map: map
        });
        map.setCenter(pos);
      }, function() {
        handleLocationError(true, infoWindow, map.getCenter());
      });
    } else {
      // Browser doesn't support Geolocation
      handleLocationError(false, infoWindow, map.getCenter());
    }

    var bounds = {
      north: pos.lat, //41.450910,
      south: pos.lat, //41.449672,
      east: pos.lng, //-8.288850,
      west: pos.lng //-8.289766
    };

    rectangle = new google.maps.Rectangle({
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 2,
      fillColor: '#FF0000',
      fillOpacity: 0.25,
      map: map,
      editable:true,
      draggable: true,
      bounds: bounds
    });

    google.maps.event.addListener(map, 'rightclick', function() {
       console.log('You rightclick on the map');
    });

    google.maps.event.addListener(rectangle, 'bounds_changed', getNewRect);

    google.maps.event.addListener(rectangle, 'click', function() {
       console.log('You clicked on the rectangle');
    });


    // Define an info window on the map.
    infoWindow = new google.maps.InfoWindow();


  }

  function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
      'Error: The Geolocation service failed.' :
      'Error: Your browser doesn\'t support geolocation.');
    }

    function getNewRect(event) {
      console.log('Bounds changed.');
      var ne = rectangle.getBounds().getNorthEast();
      var sw = rectangle.getBounds().getSouthWest();

      var contentString = '<b>Rectangle moved.</b><br>' +
      'New north-east corner: ' + ne.lat() + ', ' + ne.lng() + '<br>' +
      'New south-west corner: ' + sw.lat() + ', ' + sw.lng();

      // Set the info window's content and position.
      infoWindow.setContent(contentString);
      infoWindow.setPosition(ne);

      infoWindow.open(map); //Show infoWindow in the map
    }





    </script>



    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDKDBPOez_g6R1m7_SFk1_wpZ3SDCznHO8&libraries=drawing&callback=initMap"
    async defer>
    </script>

    <?php
    // Opens a connection to a MySQL serve
    $connection = mysqli_connect($servidor, $user, "", $banco_dados);
    if (!$connection) {
      die('Could not connect: ' . mysqli_error());
    }

    // Set the active MySQL database
    $db_selected = mysql_select_db($connection, $banco_dados);
    if (!$db_selected) {
      die ('Can\'t use db : ' . mysql_error());
    }

    $query = "SELECT * FROM field   WHERE 1";
    $result = mysql_query($query);
    if (!$result) {
      die('Invalid query: ' . mysql_error());
    }

    echo $result;

    echo "1";


    ?>


  </body>
  </html>
