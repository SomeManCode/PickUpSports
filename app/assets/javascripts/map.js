var map;
//intializes google maps object
function initialize() {
    var myLocation = new google.maps.LatLng(40.7308228, -73.997332);
    var mapOptions = {
        zoom: 12,
        center: myLocation,
        myTypeId: google.maps.MapTypeId.ROADMAP
    };
     map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
}
//a function that takes in latitude, longitude, and name
function putMarker(latitude, longitude, name) {
    //creates a new object with latitude and longitude
    var sportLatLong = new google.maps.LatLng(latitude, longitude);
    console.log(sportLatLong);
    var marker = new google.maps.Marker({
        position: sportLatLong,
        map: map,
        title: name
    });
}