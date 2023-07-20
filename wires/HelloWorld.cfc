component extends="cbwire.models.Component" {

	data = {
		  "title"      : ""
		, "description": ""
	};

	function onMount( parameters, event, rc, prc ) {
		data.title       = "Introduction";
		data.description = "Build reactive apps easily using CFML and less JavaScript.";
	}

}