<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insurance</title>

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
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px #cccccc;
        }

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 7px;
        }

        input, select {
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
            margin-left: 10px;
            padding: 12px 20px;
            background-color: #777;
            color: white;
            text-decoration: none;  
            border-radius: 5px;
        }
    </style>
</head>

<body>

<div class="header">
    
    <p>Insurance Management</p>
</div>

<div class="container">

    <h2>Insurance Details</h2>

    <form action="${pageContext.request.contextPath}/insurance/save"
          method="post">

        <div class="form-group">
            <label>Policy Number</label>
            <input type="text"
                   name="policyNumber"
                   placeholder="Enter policy number"
                   required>
        </div>

        <div class="form-group">
            <label>Customer Name</label>
            <input type="text"
                   name="customerName"
                   placeholder="Enter customer name"
                   required>
        </div>

        <div class="form-group">
            <label>Policy Type</label>
            <select name="policyType" required>
                <option value="">-- Select Policy Type --</option>
                <option value="INDIVIDUAL">Individual</option>
                <option value="FAMILY">Family</option>
                <option value="CORPORATE">Corporate</option>
                <option value="HEALTH">Health</option>
            </select>
        </div>

        <div class="form-group">
            <label>Premium</label>
            <input type="number"
                   name="premium"
                   step="0.01"
                   placeholder="Enter premium amount"
                   required>
        </div>

        <div class="form-group">
            <label>Claim Status</label>
            <select name="claimStatus" required>
                <option value="">-- Select Claim Status --</option>
                <option value="PENDING">Pending</option>
                <option value="APPROVED">Approved</option>
                <option value="REJECTED">Rejected</option>
                <option value="SETTLED">Settled</option>
            </select>
        </div>

        <div class="form-group">
            <label>Policy Status</label>
            <select name="policyStatus" required>
                <option value="">-- Select Policy Status --</option>
                <option value="ACTIVE">Active</option>
                <option value="EXPIRED">Expired</option>
                <option value="CANCELLED">Cancelled</option>
            </select>
        </div>

        <button type="submit" class="button">
            Save Insurance
        </button><br></br>
        
        <button type="button"
            class="previous-btn"
            onclick="window.location.href='payment.jsp'">
            Previous
    </button>

    <button type="button" align="right"
            class="next-btn" 
            onclick="window.location.href='government portal.jsp'">
            Next
    </button>

      

    </form>

</div>

</body>
</html>