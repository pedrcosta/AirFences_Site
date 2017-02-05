<html>
<?php
include "head.php";
require("Dados_BD.php");

?>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">

<script src="js/jquery-1.10.2.js"></script>
<script src="js/Migrate.js"></script>

<?php
$historic_table = "historic";
$animla_table = "animal";
$conexao= mysql_connect($servidor,$user,$senha);
$colecta_banco = mysql_select_db($banco_dados,$conexao);

if($conexao && $colecta_banco)

//GETING THE LAST POSITION OF THE ANIMAL 1
$query = sprintf("SELECT latitude, longitude, id_zone, battery, temperature FROM historic WHERE id_animal=1 ORDER BY time DESC LIMIT 1");

$result = mysql_query($query); //Result
$row = mysql_fetch_assoc($result);
$latitude = $row['latitude'];
$longitude = $row['longitude'];
$zone = $row['id_zone'];
$bat = $row['battery'];
$temp = $row['temperature'];
// echo $temp;

$query = sprintf("SELECT latitude, longitude, latitude2, longitude2 FROM field WHERE id_field=1");

$result = mysql_query($query);
$row = mysql_fetch_assoc($result);

$field_lat1 = $row['latitude'];
$field_lng1 = $row['longitude'];
$field_lat2 = $row['latitude2'];
$field_lng2 = $row['longitude2'];

// echo $latitude;
// echo $longitude;

?>

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
      <a  id="link" href="addAnimal.php"> Add Animal </a>
      <a  id="link" href=""> Change Field </a>
      <a  id="link" href="animalInfo.php"> Animal Info </a>
      <a  id="link" href="session_destroy.php"> Logout </a>
    </form>
  </div>


  <div id="map"></div>
  <script>
  var varinfoWindow;
  var map;
  var rectangle;
  var center;
  var latitude;
  var longitude;

  function initMap() {
    /***************************************************************************/
    //ANIMAL INFO
    var animalLAT = parseFloat('<?php echo $latitude;?>');
    var animalLONG = parseFloat('<?php echo $longitude;?>');
    var animalZone = parseFloat('<?php echo $zone;?>');
    var animalBat = parseFloat('<?php echo $bat;?>');
    var animalTemp = parseFloat('<?php echo $temp;?>');

    field_SW = new google.maps.LatLng({
      lat: parseFloat('<?php echo $field_lat1;?>'),
      lng: parseFloat('<?php echo $field_lng1;?>') });

    field_NE = new google.maps.LatLng({
      lat: parseFloat('<?php echo $field_lat2;?>'),
      lng: parseFloat('<?php echo $field_lng2;?>') });


    /***************************************************************************/

    console.log('lat: ' + animalLAT + '\nlng: ' + animalLONG);

    var animalPos = {lat: animalLAT, lng: animalLONG};

    map = new google.maps.Map(document.getElementById('map'), {
      center: animalPos,
      zoom: 17,
      mapTypeId: 'hybrid',
      heading: 90,
      rotateControl : true,
      tilt: 0 //se aproximar muito fica em 3D
      // disableDefaultUI: true //Disable the map
    });

/***************************ANIMAL MARKER**************************************/
    animalMarker = new google.maps.Marker({
      position: animalPos,
      map: map,
    });

      animalWindow = new google.maps.InfoWindow();

      var animalInfo = '<center><b>Animal ID: 1</b><br></center>' +
      '<b>Zone: </b>' + animalZone +'<br>' +
      '<b>Battery: </b>' + animalBat + '<br>' +
      '<b>Temperature: </b>' + animalTemp ;

      // Set the info window's content and position.
      animalWindow.setContent(animalInfo);
      animalWindow.setPosition(animalPos);

      animalMarker.addListener('click', function() {
         animalWindow.open(map, animalMarker); //Show infoWindow in the map
       });

      //  marker.setMap(null); //Remove marker

/******************************************************************************/

console.log('field_SW: ' + field_SW + '\fField_NE: ' + field_NE);

    // var fieldMap = new google.maps.LatLngBounds({
    // sw: field_SW,
    // ne: field_NE });

    var bounds = {
          north: field_NE.lat(),
          south: field_SW.lat(),
          east: field_NE.lng(),
          west: field_SW.lng()
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


    // var infoWindow = new google.maps.InfoWindow({map: map});

    // // Try HTML5 geolocation.
    // if (navigator.geolocation) {
    //   navigator.geolocation.getCurrentPosition(function(position) {
    //     var pos = {
    //       lat: position.coords.latitude,
    //       lng: position.coords.longitude
    //     };
    //     latitude = position.coords.latitude;
    //     longitude = position.coords.longitude;
    //
    //     console.log('latitude e longitude %f %f', latitude, longitude);
    //
    //     infoWindow.setPosition(pos);
    //     infoWindow.setContent('Location found.');
    //     var marker = new google.maps.Marker({
    //       position: pos,
    //       map: map
    //     });
    //     map.setCenter(pos);
    //   }, function() {
    //     handleLocationError(true, infoWindow, map.getCenter());
    //   });
    // } else {
    //   // Browser doesn't support Geolocation
    //   handleLocationError(false, infoWindow, map.getCenter());
    //   var pos = { lat: 10.066611095611856, lng: -69.33721108996582};
    //   map.setCenter(pos);
    // }
    //
    // center =  map.getBounds();



    /******************************************************************************/
    var drawingManager = new google.maps.drawing.DrawingManager({
      drawingControl: true,
      drawingControlOptions: {
        position: google.maps.ControlPosition.TOP_CENTER,
        drawingModes: [google.maps.drawing.OverlayType.RECTANGLE]
      },
      rectangleOptions: {
        strokeColor: '#FF0000',
        strokeOpacity: 0.8,
        strokeWeight: 2,
        fillColor: '#FF0000',
        fillOpacity: 0.25,
        clickable: true,
        editable: true,
        draggable: true,
        zIndex: 1
      }
    });



    drawingManager.setMap(map);


    google.maps.event.addListener(drawingManager, 'rectanglecomplete', function(rectangle) {
      drawingManager.setDrawingMode(null);

      /* DOES WORK */
      google.maps.event.addListener(rectangle, 'click', function() {
        //  console.log(rectangle);
        var ne = rectangle.getBounds().getNorthEast();
        var sw = rectangle.getBounds().getSouthWest();

        console.log('New north-east corner: ' + ne.lat() + ', ' + ne.lng() +
        '\n' + 'New south-west corner: ' + sw.lat() + ', ' + sw.lng());

        var marker = new google.maps.Marker({
          position: ne,
          map: map,
          title: 'Hello World!'
        });
        var marker = new google.maps.Marker({
          position: sw,
          map: map,
          title: 'Hello World!'
        });
      });

    });

    /******************************************************************************/


    google.maps.event.addListener(map, 'click', function(event) {
      latitude = event.latLng.lat();
      longitude = event.latLng.lng();
      console.log('latitude e longitude %f %f', latitude, longitude);


    });

    // google.maps.event.addListener(rectangle, 'bounds_changed', getNewRect);

    google.maps.event.addListener(rectangle, 'bounds_changed', getNewCoordField);


    // Define an info window on the map.
    infoWindow = new google.maps.InfoWindow();

    // rectangle.setMap(map);

  }

  function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
      'Error: The Geolocation service failed.' :
      'Error: Your browser doesn\'t support geolocation.');
    }

    //Get the new coordinates of the field
    function getNewCoordField(event) {
      google.maps.event.addListener(rectangle, 'drag', function(event){
        console.log('while.');
      });
      // google.maps.event.addListener(rectangle, 'bounds_changed' && 'dragend', getNewCoordField)
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

    </body>
  </html>
