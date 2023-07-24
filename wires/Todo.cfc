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

	function editTask( taskId ) {
		var taskIndex = ArrayFind( data.tasks, function( task ) {
			return task.id == taskId;
		} );

		data.tasks[ taskIndex ].done = true;
	}

}