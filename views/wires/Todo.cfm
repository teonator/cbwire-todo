<cfoutput>

	<div class="row d-flex justify-content-center">
		<div class="col col-xl-8">

			<div class="card">
				<div class="card-body p-5">

					<form class="d-flex mb-1">
						<input wire:model="task" type="text" class="form-control me-2 <cfif args.hydrated and validation.hasErrors( "task" )>is-invalid</cfif>" placeholder="New task..." />
						<button wire:click.prevent="addTask" type="submit" class="btn btn-primary"><i class="fas fa-plus"></i></button>
					</form>

					<cfif args.hydrated and validation.hasErrors( "task" )>
						<div>
							<cfloop array="#validation.getAllErrors( "task" )#" index="error">
								<span class="text-danger">#error#</span>
							</cfloop>
						</div>
					</cfif>

					<h4 class="mt-3">Tasks (#args.computed.taskCounter()#)</h4>

					<ul class="list-group">
						<cfloop array="#args.tasks#" index="task">
							<li class="list-group-item list-group-item-action d-flex align-items-center">
								<a wire:click.prevent="editTask( '#task.id#' )" class="btn btn-sm me-2 <cfif task.done>btn-outline-success<cfelse>btn-outline-secondary</cfif>">
									<i class="fas fa-check <cfif not task.done>text-white</cfif>"></i>
								</a>

								<p class="flex-grow-1 mb-0 text-secondary <cfif task.done>text-decoration-line-through</cfif>">#task.label#</p>

								<a wire:click.prevent="deleteTask( '#task.id#' )" class="btn btn-sm text-danger">
									<i class="fas fa-trash"></i>
								</a>
							</li>
						</cfloop>
					</ul>

				</div>
			</div>

		</div>
	</div>

</cfoutput>