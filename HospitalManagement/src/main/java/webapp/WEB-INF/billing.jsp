<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Create Bill - Hospital Billing</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
        }

        .header {
            background-color: #1f4e79;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            width: 700px;
            margin: 30px auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px #cccccc;
        }

        h2 {
            color: #1f4e79;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 7px;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        textarea {
            height: 80px;
        }

        .button {
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            background-color: #1f4e79;
            color: white;
            cursor: pointer;
            font-size: 15px;
        }

        .button:hover {
            background-color: #163a5c;
        }

        .back-button {
            display: inline-block;
            margin-left: 10px;
            padding: 12px 20px;
            background-color: #777777;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>

<div class="header">
    <h1>Hospital Billing System</h1>
    <p>Create New Bill</p>
</div>

<div class="container">

    <h2>Bill Details</h2>

    <form action="${pageContext.request.contextPath}/bills/save"
          method="post">

        <div class="form-group">
            <label>Patient ID</label>
            <input type="number"
                   name="patientId"
                   placeholder="Enter Patient ID"
                   required>
        </div>

        <div class="form-group">
            <label>Bill Date</label>
            <input type="date"
                   name="billDate"
                   required>
        </div>

        <div class="form-group">
            <label>Service Name</label>
            <input type="text"
                   name="serviceName"
                   placeholder="Enter service name"
                   required>
        </div>

        <div class="form-group">
            <label>Service Type</label>
            <select name="serviceType" required>
                <option value="">-- Select Service Type --</option>
                <option value="CONSULTATION">Consultation</option>
                <option value="LAB">Laboratory</option>
                <option value="PHARMACY">Pharmacy</option>
                <option value="ROOM">Room</option>
                <option value="SURGERY">Surgery</option>
                <option value="OTHER">Other</option>
            </select>
        </div>

        <div class="form-group">
            <label>Quantity</label>
            <input type="number"
                   name="quantity"
                   min="1"
                   placeholder="Enter quantity"
                   required>
        </div>

        <div class="form-group">
            <label>Unit Price</label>
            <input type="number"
                   name="unitPrice"
                   step="0.01"
                   placeholder="Enter unit price"
                   required>
        </div>

        <div class="form-group">
            <label>Subtotal</label>
            <input type="number"
                   name="subtotal"
                   step="0.01"
                   placeholder="Enter subtotal"
                   required>
        </div>

        <div class="form-group">
            <label>Discount</label>
            <input type="number"
                   name="discount"
                   step="0.01"
                   value="0"
                   placeholder="Enter discount">
        </div>

        <div class="form-group">
            <label>Tax Amount</label>
            <input type="number"
                   name="taxAmount"
                   step="0.01"
                   value="0"
                   placeholder="Enter tax amount">
        </div>

        <div class="form-group">
            <label>Total Amount</label>
            <input type="number"
                   name="totalAmount"
                   step="0.01"
                   placeholder="Enter total amount"
                   required>
        </div>

        <div class="form-group">
            <label>Payment Status</label>
            <select name="paymentStatus" required>
                <option value="">-- Select Payment Status --</option>
                <option value="PENDING">Pending</option>
                <option value="PARTIALLY_PAID">Partially Paid</option>
                <option value="PAID">Paid</option>
            </select>
        </div>

        <button type="submit" class="button">
            Save Bill
        </button><br></br>

          <button type="button"
            class="previous-btn"
            onclick="window.location.href='service.jsp'">
            Previous
    </button>

    <button type="button"
            class="next-btn"
            onclick="window.location.href='bill items.jsp'">
            Next
    </button>
    </form>

</div>

</body>
</html>