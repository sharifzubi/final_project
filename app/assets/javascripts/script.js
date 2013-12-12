init_autocomplete = function(map, marker){
  var input = document.getElementById("autocomplete");

  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.bindTo("bounds", map);

  google.maps.event.addListener(autocomplete, 'place_changed', function(){
    place = autocomplete.getPlace();
    console.log(place)

    marker.setVisible(false);
    window.infowindow.close();

    if (place.geometry.viewport) {
      map.fitBounds(place.geometry.viewport);
    } else {
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    }

    // marker.setIcon({
    //   url: place.icon
    // });

    marker.setPosition(place.geometry.location);
    marker.setVisible(true);
    var address = "";

    if (place.address_components) {
      address = (place.address_components[0] && place.address_components[0].short_name || "");
    }

    infowindow.setContent("<div>" + place.name + "</div>");
    infowindow.open(map, marker)
  })
}



function initialize() {

  var myLatLng = new google.maps.LatLng(51.489296, -0.176217);

  var mapOptions = {
    center: myLatLng,
    zoom: 12
  };

  var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);


  $.each(window.photos, function(index, item){
    var myLatLng = new google.maps.LatLng(item.location.latitude, item.location.longitude);
    var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      // icon: image
    });

    infowindow2 = new google.maps.InfoWindow({
      content: "<img src='"+ item.image.image.url+"'>"
    });

    google.maps.event.addListener(marker, 'click', function() {
      infowindow2.open(map,marker);
    });
  })
  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    // icon: image
  });

  window.infowindow = new google.maps.InfoWindow({
    content: "<img src='http://qph.is.quoracdn.net/main-thumb-4365810-200-EgT8jiCiHhRsTmqorq48g7p56aJ22myG.jpeg'>"
  });

  // AUTOCOMPLETE
  init_autocomplete(map, marker)


  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);



