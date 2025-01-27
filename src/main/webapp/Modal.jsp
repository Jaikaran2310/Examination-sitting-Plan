<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="navbar.html">
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Update</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>

					<div class="modal-body">
						<div class="mb-3">
							<label for="input1" class="form-label">Roll No</label> <input
								type="text" class="form-control" id="input1">
						</div>
						<div class="mb-3">
							<label for="input2" class="form-label">Name</label> <input
								type="text" class="form-control" id="input2">
						</div>
						<div class="mb-3">
							<label for="input3" class="form-label">Fname</label> <input
								type="text" class="form-control" id="input3">
						</div>
						<div class="mb-3">
							<label for="input4" class="form-label">Room No</label> <input
								type="text" class="form-control" id="input4">
						</div>
						<div class="mb-3">
							<label for="input5" class="form-label">Row Num</label> <input
								type="text" class="form-control" id="input5">
						</div>
						<div class="mb-3">
							<label for="input6" class="form-label">Chair No</label> <input
								type="text" class="form-control" id="input6">
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>
	</form>

<script>
		var updateBtn = document.createElement('button');
		updateBtn.setAttribute('type', 'button');
		updateBtn.setAttribute('class', 'btn btn-warning ms-auto me-2');
		updateBtn.setAttribute('data-bs-toggle', 'modal');
		updateBtn.setAttribute('data-bs-target', '#exampleModal');
		updateBtn.innerText = 'Save';
		newRow.appendChild(updateBtn);

		inputFieldsContainer.appendChild(newRow);}
	</script>

<script>
src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
crossorigin="anonymous"></script>

</script>

</body>
</html>