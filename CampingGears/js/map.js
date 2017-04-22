var map;

function checkjavascripts(){
    if (!Modernizr.geolocation) {
        alert("This browser doesn't support the Geolocation API.");
        return;
    }
    navigator.geolocation.getCurrentPosition(initmap, OnError);
}

function initmap() {
    var lcb = { lat: 4.8857, lng: 114.9317 }
	var mapdetails= {
		zoom:12,
		center: lcb,
	    mapTypeId:google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById('map'),mapdetails);

	var lcblocation = new google.maps.Circle({
	    center: lcb,
	    radius: 2000,
	    strokeColor: "#0000FF",
	    strokeOpacity: 0.8,
	    strokeWeight: 2,
	    fillColor: "#0000FF",
	    fillOpacity: 0.4
	});

	var marker = new google.maps.Marker({
		position:lcb,
		map: map,
		title:"Ot-Doors Company"
	});

	lcblocation.setMap(map);
}

function OnError(err) {
    alert(err.message);
    var calloutOptions = { title: "Location Information", description: "This is the default location." };
    var defaultPos = { lat: 4.8857, lng: 114.9317 } ;
    var callout = new Microsoft.Maps.Infobox(defaultPos, calloutOptions);
    map.entities.push(callout);
}