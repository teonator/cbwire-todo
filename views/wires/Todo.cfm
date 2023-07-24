<cfoutput>

	<div class="row d-flex justify-content-center">
		<div class="col col-xl-8">

			<div class="card">
				<div class="card-body p-5">

					<form class="d-flex mb-4">
						<input wire:model="task" type="text" class="form-control me-2" placeholder="New task..." />
						<button wire:click.prevent="addTask" type="submit" class="btn btn-primary"><i class="fas fa-plus"></i></button>
					</form>

					<ul class="list-group">
						<cfloop array="#args.tasks#" index="task">
							<li class="list-group-item list-group-item-action d-flex align-items-center">
								<a class="btn btn-sm btn-outline-secondary me-2">
									<i class="fas fa-check <cfif not task.done>text-white</cfif>"></i>
								</a>
								<p class="flex-grow-1 text-secondary mb-0 <cfif task.done>text-decoration-line-through</cfif>">#task.label#</p>
							</li>
						</cfloop>
					</ul>

				</div>
			</div>

		</div>
	</div>

</cfoutput>