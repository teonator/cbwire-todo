<cfoutput>

	<div class="row d-flex justify-content-center">
		<div class="col col-xl-8">

			<div class="card">
				<div class="card-body p-5">

					<form class="d-flex mb-4">
						<input type="text" class="form-control me-2" placeholder="New task..." />
						<button type="submit" class="btn btn-primary"><i class="fas fa-plus"></i></button>
					</form>

					<ul class="list-group">
						<li class="list-group-item list-group-item-action d-flex align-items-center">
							<a class="btn btn-sm btn-outline-secondary me-2" href="">
								<i class="fas fa-check text-white"></i>
							</a>
							<p class="flex-grow-1 text-secondary mb-0">First task</p>
						</li>
						<li class="list-group-item list-group-item-action d-flex align-items-center">
							<a class="btn btn-sm btn-outline-secondary me-2" href="">
								<i class="fas fa-check text-white"></i>
							</a>
							<p class="flex-grow-1 text-secondary mb-0">Second task</p>
						</li>
						<li class="list-group-item list-group-item-action d-flex align-items-center">
							<a class="btn btn-sm btn-outline-secondary me-2" href="">
								<i class="fas fa-check"></i>
							</a>
							<p class="flex-grow-1 text-secondary mb-0 text-decoration-line-through">Third task</p>
						</li>
					</ul>

				</div>
			</div>

		</div>
	</div>

</cfoutput>