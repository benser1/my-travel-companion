
var map;
var marker;
var myLatLng = {lat: -25.363, lng: 131.044};

function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: myLatLng,
    zoom: 4
  });

  marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Hello World!'
  });

  marker.setMap(map);
}
