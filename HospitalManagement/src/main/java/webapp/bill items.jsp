<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bill Item - Hospital Billing</title>

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

        input,
        select,
        textarea {
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

    <p>Add Bill Item</p>

</div>


<div class="container">

    <h2>Bill Item Details</h2>


    <form action="${pageContext.request.contextPath}/bill-items/save"
          method="post">


        <!-- Bill ID -->

        <div class="form-group">

            <label>Bill ID</label>

            <input type="number"
                   name="billId"
                   placeholder="Enter Bill ID"
                   required>

        </div>


        <!-- Service Name -->

        <div class="form-group">

            <label>Service Name</label>

            <input type="text"
                   name="serviceName"
                   placeholder="Enter service name"
                   required>

        </div>


        <!-- Description -->

        <div class="form-group">

            <label>Description</label>

            <textarea name="description"
                      placeholder="Enter service description"></textarea>

        </div>


        <!-- Service Type -->

        <div class="form-group">

            <label>Service Type</label>

            <select name="serviceType" required>

                <option value="">
                    -- Select Service Type --
                </option>

                <option value="CONSULTATION">
                    Consultation
                </option>

                <option value="LAB">
                    Laboratory
                </option>

                <option value="PHARMACY">
                    Pharmacy
                </option>

                <option value="ROOM">
                    Room
                </option>

                <option value="SURGERY">
                    Surgery
                </option>

                <option value="OTHER">
                    Other
                </option>

            </select>

        </div>


        <!-- Quantity -->

        <div class="form-group">

            <label>Quantity</label>

            <input type="number"
                   name="quantity"
                   min="1"
                   placeholder="Enter quantity"
                   required>

        </div>


        <!-- Unit Price -->

        <div class="form-group">

            <label>Unit Price</label>

            <input type="number"
                   name="unitPrice"
                   step="0.01"
                   placeholder="Enter unit price"
                   required>

        </div>


        <!-- Discount -->

        <div class="form-group">

            <label>Discount</label>

            <input type="number"
                   name="discount"
                   step="0.01"
                   value="0"
                   placeholder="Enter discount">

        </div>


        <!-- Tax Rate -->

        <div class="form-group">

            <label>Tax Rate (%)</label>

            <input type="number"
                   name="taxRate"
                   step="0.01"
                   value="0"
                   placeholder="Enter tax rate">

        </div>


        <!-- Tax Amount -->

        <div class="form-group">

            <label>Tax Amount</label>

            <input type="number"
                   name="taxAmount"
                   step="0.01"
                   value="0"
                   placeholder="Enter tax amount">

        </div>


        <!-- Total Amount -->

        <div class="form-group">

            <label>Total Amount</label>

            <input type="number"
                   name="totalAmount"
                   step="0.01"
                   placeholder="Enter total amount"
                   required>

        </div>


        <!-- Buttons -->

      <button type="button"
            class="previous-btn"
            onclick="window.location.href='billing.jsp'">
            Previous
    </button>

    <button type="button" align="right"
            class="next-btn" 
            onclick="window.location.href='payment.jsp'">
            Next
    </button>

        </a>

    </form>

</div>

</body>

</html>