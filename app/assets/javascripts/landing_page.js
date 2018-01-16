function initiateMap() {
  var coords;
  if (document.body.dataset.env === 'test') {
    coords = JSON.parse(document.getElementById('fake_position').content);
  } else {
    navigator.geolocation.getCurrentPosition(function(resp){
      coords = resp.coords;
    })
  }
    map = GMaps({
        div: '#map',
        zoom: 12,
        lat: coords.latitude,
        lng: coords.longitude
    });
    addMarkers()
}

function addMarkers() {
    restaurants.forEach(function (item) {
        map.addMarker({
            lat: item.latitude,
            lng: item.longitude,
            title: item.name,
            infoWindow: {
                content: '<h4>' + item.name + '</h4><p>' + item.city +'</p>'
            }
        });
      });
    }
