<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Government Portal</title>

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

    <p>Government Portal</p>

</div>


<div class="container">

    <h2>Government Scheme Details</h2>


    <form action="${pageContext.request.contextPath}/government-portal/save"
          method="post">


        <div class="form-group">

            <label>Scheme Name</label>

            <input type="text"
                   name="schemeName"
                   placeholder="Enter government scheme name"
                   required>

        </div>


        <div class="form-group">

            <label>Beneficiary Name</label>

            <input type="text"
                   name="beneficiaryName"
                   placeholder="Enter beneficiary name"
                   required>

        </div>


        <div class="form-group">

            <label>Beneficiary ID</label>

            <input type="text"
                   name="beneficiaryId"
                   placeholder="Enter beneficiary ID"
                   required>

        </div>


        <div class="form-group">

            <label>Hospital Name</label>

            <input type="text"
                   name="hospitalName"
                   placeholder="Enter hospital name"
                   required>

        </div>


        <div class="form-group">

            <label>Claim Amount</label>

            <input type="number"
                   name="claimAmount"
                   step="0.01"
                   placeholder="Enter claim amount"
                   required>

        </div>


        <div class="form-group">

            <label>Claim Status</label>

            <select name="claimStatus" required>

                <option value="">
                    -- Select Claim Status --
                </option>

                <option value="PENDING">
                    Pending
                </option>

                <option value="APPROVED">
                    Approved
                </option>

                <option value="REJECTED">
                    Rejected
                </option>

                <option value="SETTLED">
                    Settled
                </option>

            </select>

        </div>


        <div class="form-group">

            <label>Application Date</label>

            <input type="date"
                   name="applicationDate"
                   required>

        </div>


        <button type="submit" class="button">
            Save Government Details
        </button><br></br>
        
        <button type="button"
            class="previous-btn"
            onclick="window.location.href='insurance.jsp'">
            Previous
    </button>

    <button type="button" align="right"
            class="next-btn" 
            onclick="window.location.href='summary.jsp'">
            Next
    </button>


    </form>

</div>

</body>

</html>