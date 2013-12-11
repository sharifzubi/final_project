function initialize() {

  var myLatLng = new google.maps.LatLng(51.489296, -0.176217);

  var mapOptions = {
    center: myLatLng,
    zoom: 12
  };
  var map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);

  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: "Home"
  })

  var infowindow = new google.maps.InfoWindow({
      content: "<img src='http://qph.is.quoracdn.net/main-thumb-4365810-200-EgT8jiCiHhRsTmqorq48g7p56aJ22myG.jpeg'>"
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);
