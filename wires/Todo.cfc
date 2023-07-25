component extends="cbwire.models.Component" {

	template = "/views/wires/Todo.cfm";

	data = {
		  "hydrated": false
		, "tasks"   : []
		, "task"    : ""
	};

	computed = {
		"taskCounter": function() {
			return ArrayLen( data.tasks );
		}
	};

	listeners = {
		  "checkTask": "editTask"
		, "trashTask": "deleteTask"
	};

	constraints = {
		 "task": { required: true, requiredMessage="Please enter the {field}." }
	};

	function onHydrate( event, rc, prc, parameters ) {
		data.hydrated = true;
	}

	function addTask() {
		var result = validate();

		if ( !result.hasErrors() ) {
			ArrayAppend( data.tasks, {
				  "id"   : CreateUUID()
				, "label": data.task
				, "done" : false
			} );

			data.task = "";
		}
	}

	function editTask( taskId ) {
		var taskIndex = _getTaskIndex( taskId );

		data.tasks[ taskIndex ].done = !data.tasks[ taskIndex ].done;

		data.hydrated = false;
	}

	function deleteTask( taskId ) {
		ArrayDeleteAt( data.tasks, _getTaskIndex( taskId ) );

		data.hydrated = false;
	}

	function _getTaskIndex( taskId ) {
		return ArrayFind( data.tasks, function( task ) {
			return task.id == taskId;
		} );
	}

	// Alias
	function validate() {
		return _validate();
	}

}