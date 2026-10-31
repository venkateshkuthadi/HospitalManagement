<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Payment</title>

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
            width: 600px;
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
        select {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }

        .button {
            padding: 12px 20px;
            background-color: #1f4e79;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
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

    <p>Payment Management</p>

</div>


<div class="container">

    <h2>Payment Details</h2>

    <form action="${pageContext.request.contextPath}/payments/save"
          method="post">

        <!-- Bill ID -->

        <div class="form-group">

            <label>Bill ID</label>

            <input type="number"
                   name="billId"
                   placeholder="Enter Bill ID"
                   required>

        </div>


        <!-- Payment Date -->

        <div class="form-group">

            <label>Payment Date</label>

            <input type="date"
                   name="paymentDate"
                   required>

        </div>


        <!-- Amount -->

        <div class="form-group">

            <label>Amount</label>

            <input type="number"
                   name="amount"
                   step="0.01"
                   placeholder="Enter payment amount"
                   required>

        </div>


        <!-- Payment Method -->

        <div class="form-group">

            <label>Payment Method</label>

            <select name="paymentMethod" required>

                <option value="">
                    -- Select Payment Method --
                </option>

                <option value="CASH">Cash</option>

                <option value="CARD">Card</option>

                <option value="UPI">UPI</option>

                <option value="BANK_TRANSFER">
                    Bank Transfer
                </option>

            </select>

        </div>


        <!-- Payment Status -->

        <div class="form-group">

            <label>Payment Status</label>

            <select name="paymentStatus" required>

                <option value="">
                    -- Select Payment Status --
                </option>

                <option value="PENDING">
                    Pending
                </option>

                <option value="SUCCESSFUL">
                    Successful
                </option>

                <option value="FAILED">
                    Failed
                </option>

            </select>

        </div>


        <button type="submit" class="button">
            Save Payment
        </button><br></br>

      <button type="button"
            class="previous-btn"
            onclick="window.location.href='bill items.jsp'">
            Previous
    </button>

    <button type="button"
            class="next-btn"
            onclick="window.location.href='insurance.jsp'">
            Next
    </button>
    </form>

</div>

</body>

</html>