<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Billing Summary</title>

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
            display: flex;
            min-height: calc(100vh - 80px);
        }

        .sidebar {
            width: 220px;
            background-color: #263238;
            padding-top: 20px;
        }

        .sidebar h3 {
            color: white;
            text-align: center;
            margin-bottom: 25px;
        }

        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 15px 20px;
        }

        .sidebar a:hover {
            background-color: #455a64;
        }

        .sidebar .logout {
            margin-top: 30px;
            border-top: 1px solid #455a64;
        }

        .sidebar .logout:hover {
            background-color: #c62828;
        }

        .content {
            flex: 1;
            padding: 30px;
        }

        .summary-boxes {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .box {
            background-color: white;
            width: 210px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px #cccccc;
        }

        .box h3 {
            color: #555;
            margin-top: 0;
        }

        .box p {
            font-size: 22px;
            font-weight: bold;
            color: #1f4e79;
        }

        .section {
            background-color: white;
            margin-top: 30px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px #cccccc;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #1f4e79;
            color: white;
            padding: 12px;
            text-align: left;
        }

        td {
            padding: 12px;
            border-bottom: 1px solid #dddddd;
        }

        .button {
            display: inline-block;
            padding: 10px 15px;
            background-color: #1f4e79;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }

        .button:hover {
            background-color: #163a5c;
        }
    </style>
</head>

<body>

<!-- Header -->
<div class="header">
    <h1>Billing Summary</h1>
    <p>Hospital Billing Management System</p>
</div>


<div class="container">

 <div class="sidebar">

    <div class="logo">
        <span>Hospital Billing</span>
    </div>


   

            <a href="index.jsp"
                 class="active">
                
                <span class="menu-text">Dashboard</span>
            </a>
            
           
   <a href="patient.jsp">
                <a href="patient.jsp">Patient</a>
            </a>
       
            <a href="service.jsp">
                    <span class="menu-text">Service</span>
            </a>
        

        
            <a href="billing.jsp">
                
                <span class="menu-text">Bills</span>
            </a>
       

        
            <a href="bill items.jsp">
                
                <span class="menu-text">Bill Items</span>
            </a>
        
        
            <a href="payment.jsp">
                
                <span class="menu-text">Payments</span>
            </a>
        

        
            <a href="insurance.jsp">
                
                <span class="menu-text">Insurance</span>
            </a>
        

                    <a href="government portal.jsp">
                
                <span class="menu-text">Government Portal</span>
            </a>
        
        
            <a href="summary.jsp">
                
                <span class="menu-text">Summary</span>
            </a>
        

        
            <a href="reports.jsp">
                
                <span class="menu-text">Reports</span>
            </a>
        
    </div>



    <!-- Main Content -->
    <div class="content">

        <h2>Billing Summary</h2>

        <!-- Basic Summary -->
        <div class="summary-boxes">

            <div class="box">
                <h3>Summary ID</h3>
                <p>${summaryId != null ? summaryId : 0}</p>
            </div>

            <div class="box">
                <h3>Summary Date</h3>
                <p>${summaryDate != null ? summaryDate : '-'}</p>
            </div>

            <div class="box">
                <h3>Total Bills</h3>
                <p>${totalBills != null ? totalBills : 0}</p>
            </div>

            <div class="box">
                <h3>Gross Amount</h3>
                <p>₹${grossAmount != null ? grossAmount : 0}</p>
            </div>

            <div class="box">
                <h3>Total Discount</h3>
                <p>₹${totalDiscount != null ? totalDiscount : 0}</p>
            </div>

            <div class="box">
                <h3>Insurance Amount</h3>
                <p>₹${insuranceAmount != null ? insuranceAmount : 0}</p>
            </div>

            <div class="box">
                <h3>Tax Amount</h3>
                <p>₹${taxAmount != null ? taxAmount : 0}</p>
            </div>

            <div class="box">
                <h3>Net Amount</h3>
                <p>₹${netAmount != null ? netAmount : 0}</p>
            </div>

            <div class="box">
                <h3>Paid Amount</h3>
                <p>₹${paidAmount != null ? paidAmount : 0}</p>
            </div>

            <div class="box">
                <h3>Balance Amount</h3>
                <p>₹${balanceAmount != null ? balanceAmount : 0}</p>
            </div>

        </div>


        <!-- Payment Method Summary -->
        <div class="section">

            <h2>Payment Method Summary</h2>

            <table>

                <tr>
                    <th>Payment Method</th>
                    <th>Amount</th>
                </tr>

                <tr>
                    <td>Cash</td>
                    <td>₹${cashAmount != null ? cashAmount : 0}</td>
                </tr>

                <tr>
                    <td>UPI</td>
                    <td>₹${upiAmount != null ? upiAmount : 0}</td>
                </tr>

                <tr>
                    <td>Card</td>
                    <td>₹${cardAmount != null ? cardAmount : 0}</td>
                </tr>

            </table>

        </div>


        <!-- Bill Status Summary -->
        <div class="section">

            <h2>Bill Status Summary</h2>

            <table>

                <tr>
                    <th>Bill Status</th>
                    <th>Number of Bills</th>
                </tr>

                <tr>
                    <td>Paid Bills</td>
                    <td>${paidBills != null ? paidBills : 0}</td>
                </tr>

                <tr>
                    <td>Pending Bills</td>
                    <td>${pendingBills != null ? pendingBills : 0}</td>
                </tr>

                <tr>
                    <td>Partial Bills</td>
                    <td>${partialBills != null ? partialBills : 0}</td>
                </tr>

            </table>

        </div>


        

    </div>

</div>
<button type="button"
            class="previous-btn"
            onclick="window.location.href='government portal.jsp'">
            Previous
    </button>

    <button type="button" align="right"
            class="next-btn" 
            onclick="window.location.href='reports.jsp'">
            Next
    </button>

</body>
</html>