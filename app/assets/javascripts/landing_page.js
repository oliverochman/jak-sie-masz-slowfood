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
}
