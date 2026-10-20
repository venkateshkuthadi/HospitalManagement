<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Service Management</title>

    <link rel="stylesheet" href="service.css">
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background: rgb(192, 192, 192);
    color: #333;
}


.container {
    width: 95%;
    max-width: 1400px;
    margin: 30px auto;
}




.header {
    background: white;
    padding: 25px;
    border-radius: 12px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 25px;
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.08);
}

.header h1 {
    color: #1e3a8a;
    font-size: 28px;
    margin-bottom: 6px;
}

.header p {
    color: #777;
    font-size: 14px;
}


/* Add Service Button */

.add-btn {
    background: #1e3a8a;
    color: white;
    border: none;
    padding: 12px 20px;
    border-radius: 7px;
    font-size: 14px;
    cursor: pointer;
}

.add-btn:hover {
    background: #162d6b;
}




.form-card {
    background: white;
    padding: 25px;
    border-radius: 12px;
    margin-bottom: 25px;
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.08);
}

.form-card h2 {
    color: #1e3a8a;
    margin-bottom: 20px;
}



.form-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
}



.form-group {
    display: flex;
    flex-direction: column;
}

.form-group label {
    font-size: 14px;
    font-weight: bold;
    margin-bottom: 7px;
    color: #444;
}

.form-group input,
.form-group select {
    width: 100%;
    padding: 11px 12px;
    border: 1px solid #d0d5dd;
    border-radius: 6px;
    font-size: 14px;
    outline: none;
    background: white;
}

.form-group input:focus,
.form-group select:focus {
    border-color: #1e3a8a;
    box-shadow: 0 0 0 2px rgba(30, 58, 138, 0.1);
}




.form-buttons {
    margin-top: 25px;
    display: flex;
    gap: 10px;
}

.save-btn,
.clear-btn,
.cancel-btn {
    padding: 11px 20px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 14px;
    font-weight: bold;
}


/* Save */

.save-btn {
    background: #198754;
    color: white;
}

.save-btn:hover {
    background: #146c43;
}


/* Clear */

.clear-btn {
    background: #ffc107;
    color: #222;
}

.clear-btn:hover {
    background: #e0a800;
}


/* Cancel */

.cancel-btn {
    background: #dc3545;
    color: white;
}

.cancel-btn:hover {
    background: #bb2d3b;
}


.table-card {
    background: white;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 3px 10px rgba(0, 0, 0, 0.08);
}




.table-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

.table-header h2 {
    color: #1e3a8a;
}


/* Search */

.table-header input {
    width: 250px;
    padding: 10px 12px;
    border: 1px solid #d0d5dd;
    border-radius: 6px;
    outline: none;
}

.table-header input:focus {
    border-color: #1e3a8a;
}




.table-container {
    width: 100%;
    overflow-x: auto;
}

table {
    width: 100%;
    min-width: 1200px;
    border-collapse: collapse;
}

thead {
    background: #1e3a8a;
    color: white;
}

th {
    padding: 14px 12px;
    text-align: left;
    font-size: 13px;
}

td {
    padding: 13px 12px;
    border-bottom: 1px solid #e5e7eb;
    font-size: 13px;
}

tbody tr:hover {
    background: #f5f8ff;
}



.status {
    padding: 5px 11px;
    border-radius: 20px;
    font-size: 12px;
    font-weight: bold;
}

.active {
    background: #d1e7dd;
    color: #0f5132;
}

.inactive {
    background: #f8d7da;
    color: #842029;
}



.edit-btn {
    background: #0d6efd;
    color: white;
    border: none;
    padding: 7px 12px;
    border-radius: 5px;
    cursor: pointer;
}

.edit-btn:hover {
    background: #0b5ed7;
}


/* ================================
   DELETE BUTTON
================================ */

.delete-btn {
    background: #dc3545;
    color: white;
    border: none;
    padding: 7px 12px;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 5px;
}

.delete-btn:hover {
    background: #bb2d3b;
}


@media screen and (max-width: 768px) {

    .container {
        width: 94%;
        margin: 20px auto;
    }

    .header {
        flex-direction: column;
        align-items: flex-start;
        gap: 15px;
    }

    .form-grid {
        grid-template-columns: 1fr;
    }

    .table-header {
        flex-direction: column;
        align-items: flex-start;
        gap: 15px;
    }

    .table-header input {
        width: 100%;
    }

    .form-buttons {
        flex-wrap: wrap;
        
        
    .navigation-buttons {
    display: flex;
    justify-content: center;
    gap: 300px;
    margin-top: 35px;
}
   }
}
    
</style>
</head>

<body>

<div class="navigation-buttons">

    

</div>

    <div class="container">

        <!-- Page Header -->
        <div class="header">
            <div>
                <h1>Service Management</h1>
                <p>Manage hospital services and pricing</p>
            </div>

            <button class="add-btn" onclick="showForm()">
                Add Service
            </button>
        </div>


        <!-- Service Form -->
        <div class="form-card" id="serviceForm">

            <h2>Add Service</h2>

            <form action="SaveServiceServlet" method="post">

                <div class="form-grid">

                    <div class="form-group">
                        <label>Service ID</label>
                        <input type="number" name="id" placeholder="Enter service ID">
                    </div>

                    <div class="form-group">
                        <label>Code</label>
                        <input type="text" name="code" placeholder="Example: CONS001" required>
                    </div>

                    <div class="form-group">
                        <label>Service Name</label>
                        <input type="text" name="name" placeholder="Enter service name" required>
                    </div>

                    <div class="form-group">
                        <label>Category</label>
                        <select name="category" required>
                            <option value="">Select Category</option>
                            <option value="Consultation">Consultation</option>
                            <option value="Laboratory">Laboratory</option>
                            <option value="Pharmacy">Pharmacy</option>
                            <option value="Room">Room</option>
                            <option value="Treatment">Treatment</option>
                            <option value="Diagnostic">Diagnostic</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Type</label>
                        <select name="type" required>
                            <option value="">Select Type</option>
                            <option value="Medical">Medical</option>
                            <option value="Non-Medical">Non-Medical</option>
                            <option value="Procedure">Procedure</option>
                            <option value="Test">Test</option>
                            <option value="Room">Room</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Price</label>
                        <input type="number"
                               name="price"
                               step="0.01"
                               placeholder="Enter price"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Tax Rate (%)</label>
                        <input type="number"
                               name="taxrate"
                               step="0.01"
                               placeholder="Example: 18"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Status</label>
                        <select name="status" required>
                            <option value="">Select Status</option>
                            <option value="Active">Active</option>
                            <option value="Inactive">Inactive</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Created At</label>
                        <input type="datetime-local" name="createdAt">
                    </div>

                    <div class="form-group">
                        <label>Updated At</label>
                        <input type="datetime-local" name="updatedAt">
                    </div>

                </div>

                <div class="form-buttons">
                    <button type="submit" class="save-btn">
                        Save Service
                    </button>

                    <button type="reset" class="clear-btn">
                        Clear
                    </button>

                    <button type="button"
                            class="cancel-btn"
                            onclick="hideForm()">
                        Cancel
                    </button>
                </div>

            </form>

        </div>


        <!-- Service Table -->
        <div class="table-card">

            <div class="table-header">
                <h2>Service List</h2>

                <input type="text"
                       id="search"
                       placeholder="Search service..."
                       onkeyup="searchService()">
            </div>

            <div class="table-container">

                <table id="serviceTable">

                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Code</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Type</th>
                            <th>Price</th>
                            <th>Tax Rate</th>
                            <th>Status</th>
                            <th>Created At</th>
                            <th>Updated At</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>

                        <tr>
                            <td>1</td>
                            <td>CONS001</td>
                            <td>General Consultation</td>
                            <td>Consultation</td>
                            <td>Medical</td>
                            <td>₹500.00</td>
                            <td>5%</td>

                            <td>
                                <span class="status active">
                                    Active
                                </span>
                            </td>

                            <td>2026-09-27 10:30</td>
                            <td>2026-09-27 10:30</td>

                            <td>
                                <button class="edit-btn">
                                    Edit
                                </button>

                                <button class="delete-btn">
                                    Delete
                                </button>
                            </td>
                        </tr>


                        <tr>
                            <td>2</td>
                            <td>LAB001</td>
                            <td>Blood Test</td>
                            <td>Laboratory</td>
                            <td>Test</td>
                            <td>₹800.00</td>
                            <td>5%</td>

                            <td>
                                <span class="status active">
                                    Active
                                </span>
                            </td>

                            <td>2026-09-27 11:00</td>
                            <td>2026-09-27 11:00</td>

                            <td>
                                <button class="edit-btn">
                                    Edit
                                </button>

                                <button class="delete-btn">
                                    Delete
                                </button>
                            </td>
                        </tr>


                        <tr>
                            <td>3</td>
                            <td>ROOM001</td>
                            <td>General Ward</td>
                            <td>Room</td>
                            <td>Room</td>
                            <td>₹1500.00</td>
                            <td>0%</td>

                            <td>
                                <span class="status inactive">
                                    Inactive
                                </span>
                            </td>

                            <td>2026-09-27 11:30</td>
                            <td>2026-09-27 11:30</td>

                            <td>
                                <button class="edit-btn">
                                    Edit
                                </button>

                                <button class="delete-btn">
                                    Delete
                                </button>
                            </td>
                        </tr>

                    </tbody>

                </table>

            </div>

        </div>

    </div>


    <script>

        function showForm() {
            document.getElementById("serviceForm").style.display = "block";
        }

        function hideForm() {
            document.getElementById("serviceForm").style.display = "none";
        }


        function searchService() {

            let input =
                document.getElementById("search").value.toLowerCase();

            let rows =
                document.querySelectorAll("#serviceTable tbody tr");

            rows.forEach(function(row) {

                let text = row.innerText.toLowerCase();

                if (text.includes(input)) {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }

            });

        }

    </script>
    
    <button type="button"
            class="previous-btn"
            onclick="window.location.href='patient.jsp'">
            Previous
    </button>

    <button type="button"
            class="next-btn"
            onclick="window.location.href='billing.jsp'">
            Next
    </button>

</body>
</html>
