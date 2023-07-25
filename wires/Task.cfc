component extends="cbwire.models.Component" {

	template = "/views/wires/Task.cfm";

	data = {
		"task": {}
	};

	function onMount( event, rc, prc, parameters ) {
		data.task = parameters.task;
	}

	function editTask() {
		emitUp( "checkTask", [ data.task.id ] );
	}

	function deleteTask() {
		emitUp( "trashTask", [ data.task.id ] );
	}

}