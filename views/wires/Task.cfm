<cfoutput>

	<div class="list-group-item list-group-item-action d-flex align-items-center">
		<a wire:click.prevent="editTask()" class="btn btn-sm me-2 <cfif task.done>btn-outline-success<cfelse>btn-outline-secondary</cfif>">
			<i class="fas fa-check <cfif not task.done>text-white</cfif>"></i>
		</a>

		<p class="flex-grow-1 mb-0 text-secondary <cfif task.done>text-decoration-line-through</cfif>">#task.label#</p>

		<a wire:click.prevent="deleteTask()" class="btn btn-sm text-danger">
			<i class="fas fa-trash"></i>
		</a>
	</div>

</cfoutput>