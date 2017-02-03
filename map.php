<!DOCTYPE html>
<html>
  <head>
    <title>Geolocation</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
    // Note: This example requires that you consent to location sharing when
      // prompted by your browser. If you see the error "The Geolocation service
      // failed.", it means you probably did not give permission for the browser to
      // locate you.


    function initMap() {
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 17,
        center: {lat: 41.502201, lng: -8.349351},
        mapTypeId: 'hybrid',
        heading: 90,
        tilt: 0 //se aproximar muito fica em 3D
      });

       var infoWindow = new google.maps.InfoWindow({map: map});
      // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      }

      map.setDrawingMode('Polygon');

      var bounds = {
        north: 44.599,
        south: 44.490,
        east: -78.443,
        west: -78.649
      };

      var rectangle = new google.maps.Rectangle({
        strokeColor: '#FF0000',
        strokeOpacity: 0.8,
        strokeWeight: 2,
        fillColor: '#FF0000',
        fillOpacity: 0.35,
        map: map,
        bounds: bounds,
        draggable: true,
        // geodesic: true,
        editable: true
      });
      //
      //   // Create a <script> tag and set the USGS URL as the source.
      //   var script = document.createElement('script');
      //   // This example uses a local copy of the GeoJSON stored at
      //   // http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_week.geojsonp
      //   script.src = 'https://developers.google.com/maps/documentation/javascript/examples/json/earthquake_GeoJSONP.js';
      //   document.getElementsByTagName('head')[0].appendChild(script);
      // }
      //
      // // Loop through the results array and place a marker for each
      // // set of coordinates.
      // window.eqfeed_callback = function(results) {
      //   for (var i = 0; i < results.features.length; i++) {
      //     var coords = results.features[i].geometry.coordinates;
      //     var latLng = new google.maps.LatLng(coords[1],coords[0]);
      //     var marker = new google.maps.Marker({
      //       position: latLng,
      //       map: map
      //     });
      //   }
      // }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDKDBPOez_g6R1m7_SFk1_wpZ3SDCznHO8&callback=initMap">
    </script>
  </body>
</html>
