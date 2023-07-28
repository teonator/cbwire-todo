<cfoutput>

	<div>
		<div class="row mb-3">
			<div class="col col-xl-8 offset-xl-2">

				<h1>Todo</h1>

			</div>
		</div>

		<div class="row d-flex justify-content-center">
			<div class="col col-xl-8">

				<div class="card">
					<div class="card-body p-5">

						<form class="d-flex mb-1">
							<input wire:keydown.enter="addTask" wire:model.debounce.1s="task" type="text" class="form-control me-2 <cfif args.hydrated and validation.hasErrors( "task" )>is-invalid</cfif>" placeholder="New task..." />
							<button type="submit" disabled class="d-none">Prevent form submit from enter</button>
							<button wire:click.prevent="addTask" class="btn btn-primary"><i class="fas fa-plus"></i></button>
						</form>

						<cfif args.hydrated and validation.hasErrors( "task" )>
							<div>
								<cfloop array="#validation.getAllErrors( "task" )#" index="error">
									<span class="text-danger">#error#</span>
								</cfloop>
							</div>
						</cfif>

						<div class="d-flex align-items-center mt-4">
							<h4 class="flex-fill m-0">Tasks</h4>

							<ul class="nav nav-underline flex-fill justify-content-end">
								<li class="nav-item">
									<a class="nav-link <cfif args.filter eq "">active</cfif>" wire:click.prevent="filterTask( '' )" href="##">
										All (#args.computed.taskCounter()#)
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link <cfif args.filter eq "pending">active</cfif>" wire:click.prevent="filterTask( 'pending' )" href="##">
										Pending (#args.computed.taskCounter( 'pending' )#)
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link <cfif args.filter eq "done">active</cfif>" wire:click.prevent="filterTask( 'done' )" href="##">
										Done (#args.computed.taskCounter( 'done' )#)
									</a>
								</li>
							</ul>
						</div>

						<cfif ArrayLen( args.tasks )>
							<div class="list-group mt-3">
								<cfloop array="#args.computed.taskFilter( args.filter )#" index="task">
									#wire( "Task", { "task": task } )#
								</cfloop>
							</div>
						<cfelse>
							<p class="mt-4 text-center">Hooray! You don't have any pending task.</p>
						</cfif>

					</div>
				</div>

			</div>
		</div>

		<div class="row mt-3">
			<div class="col col-xl-8 offset-xl-2 text-end">

				<span>Made with <a href="https://cbwire.ortusbooks.com" target="_blank">CBWIRE</a></span>

			</div>
		</div>
	</div>

</cfoutput>