<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Form with 6 Input Fields</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
<style>
    body {
        font-family: Arial, sans-serif;      
        margin: 0;
        padding: 0;
        height: 100vh;
       
    }

    .form-row {
        display: flex;
        flex-wrap: wrap;
        margin-bottom: 5px;
        align-items: center;
    }

    .form-row input[type="text"] {
        flex: 1;
        padding: 5px;
        margin-right: 3px;
        margin-bottom: 3px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .form-row button {
        padding: 5px 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .form-row button:hover {
        background-color: #f0f0f0;
    }

    .form-row button.update {
        background-color: #4caf50;
        color: #fff;
    }

    .form-row button.delete {
        background-color: #f44336;
        color: #fff;
        margin-left: 5px; /* Added margin to the left */
    }
    
    .add-button {
        margin-bottom: 10px;
        margin-top:80px;
    }
    
    #inputFieldsContainer {
        margin-top: 20px;
    }
    
    #saveBtn {
        display: none;
    }
</style>
</head>
<body>
<div class="container ">
  <div class="d-flex justify-content-end">
    <button type="button" class="btn btn-primary add-button" id="addFieldsBtn">Add Records</button>
  </div>
  <form action="insertion" method="post">
  	<h4>Click On Add Record To Add New Student</h4>
    <div id="inputFieldsContainer">
    
      <!-- Input fields will be dynamically added here -->
    </div>

  </form>
</div>

<script>
    document.getElementById('addFieldsBtn').addEventListener('click', function() {
      addInputFields();
    });

    var fieldsAdded = false;
  
    function addInputFields() {
      if (!fieldsAdded) {
        var inputFieldsContainer = document.getElementById('inputFieldsContainer');
        var newRow = document.createElement('div');
        newRow.className = 'form-row';

        var placeholders = ['Roll_No', 'Name', 'Fname', 'Room_No', 'Row_No', 'Chair_No'];
        
        for (var i = 0; i < 6; i++) {
          var inputField = document.createElement('input');
          inputField.setAttribute('type', 'text');
          inputField.setAttribute('name', placeholders[i]);
          inputField.setAttribute('class', 'form-control');
          inputField.setAttribute('placeholder', placeholders[i]);
          
          newRow.appendChild(inputField);
        }
        
        var saveBtn = document.createElement('button');
        saveBtn.setAttribute('type', 'submit');
        saveBtn.setAttribute('class', 'btn btn-warning me-2'); // Removed ms-auto
        saveBtn.innerText = 'Save';
        
        var deleteBtn = document.createElement('button');
        deleteBtn.setAttribute('type', 'button');
        deleteBtn.setAttribute('class', 'btn btn-danger');
        deleteBtn.innerText = 'Delete';
        deleteBtn.addEventListener('click', function() {
          inputFieldsContainer.removeChild(newRow);
          fieldsAdded = false;
          toggleSaveButtonVisibility();
        });
        
        newRow.appendChild(saveBtn);
        newRow.appendChild(deleteBtn);
        
        inputFieldsContainer.appendChild(newRow);
        fieldsAdded = true;
        toggleSaveButtonVisibility();
      }
    }
    
    function toggleSaveButtonVisibility() {
        var saveBtn = document.getElementById('saveBtn');
        saveBtn.style.display = fieldsAdded ? 'block' : 'none';
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
