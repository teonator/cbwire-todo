component extends="cbwire.models.Component" {

	template = "/views/wires/Todo.cfm";

	data = {
		  "tasks": []
		, "task" : ""
	};

	function addTask() {
		ArrayAppend( data.tasks, {
			  "id"   : CreateUUID()
			, "label": data.task
			, "done" : false
		} );

		data.task = "";
	}

}