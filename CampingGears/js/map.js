var map;

function initmap() {
    var lcb = { lat: 4.8857, lng: 114.9317 }
	var mapdetails= {
		zoom:15,
		center: lcb,
	    mapTypeId:google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById('map'),mapdetails);

	var lcblocation = new google.maps.Circle({
	    center: lcb,
	    radius: 200,
	    strokeColor: "#0000FF",
	    strokeOpacity: 0.8,
	    strokeWeight: 2,
	    fillColor: "#0000FF",
	    fillOpacity: 0.4
	});

	var marker = new google.maps.Marker({
		position:lcb,
		map: map,
		title: "Ot-Doors Company",
	    label: "Ot-Doors Company"
	});

	lcblocation.setMap(map);
	
}