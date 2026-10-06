<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Billing Reports</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4f6f9;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar */
        .sidebar {
            width: 230px;
            background-color: #263238;
            color: white;
            min-height: 100vh;
        }

        .sidebar h2 {
            text-align: center;
            padding: 22px 10px;
            background-color: #1e272c;
            font-size: 20px;
        }

        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 15px 20px;
            border-bottom: 1px solid #37474f;
        }

        .sidebar a:hover {
            background-color: #37474f;
        }

        .sidebar .active {
            background-color: #1976d2;
        }

        .sidebar .logout {
            margin-top: 30px;
            border-top: 1px solid #455a64;
        }

        .sidebar .logout:hover {
            background-color: #c62828;
        }

        /* Main content */
        .main {
            flex: 1;
            padding: 30px;
        }

        .header {
            background-color: white;
            padding: 20px;
            margin-bottom: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
        }

        .header h1 {
            color: #263238;
            margin-bottom: 5px;
        }

        .header p {
            color: #666;
        }

        /* Report selection */
        .report-box {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
            margin-bottom: 25px;
        }

        .report-box h2 {
            margin-bottom: 20px;
            color: #263238;
        }

        .form-row {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .form-group {
            flex: 1;
            min-width: 220px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #444;
        }

        input,
        select {
            width: 100%;
            padding: 11px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .button-row {
            margin-top: 20px;
            display: flex;
            gap: 10px;
        }

        .btn {
            border: none;
            padding: 11px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 14px;
        }

        .btn-generate {
            background-color: #1976d2;
            color: white;
        }

        .btn-generate:hover {
            background-color: #125ca1;
        }

        .btn-reset {
            background-color: #757575;
            color: white;
        }

        .btn-reset:hover {
            background-color: #616161;
        }

        /* Report cards */
        .report-cards {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            margin-bottom: 25px;
        }

        .card {
            background-color: white;
            padding: 22px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
        }

        .card h3 {
            color: #666;
            font-size: 14px;
            margin-bottom: 12px;
        }

        .card p {
            font-size: 24px;
            font-weight: bold;
            color: #1976d2;
        }

        /* Table */
        .table-box {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
        }

        .table-box h2 {
            margin-bottom: 20px;
            color: #263238;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f1f3f5;
            color: #333;
        }

        tr:hover {
            background-color: #f8f9fa;
        }

        .status-paid {
            color: #2e7d32;
            font-weight: bold;
        }

        .status-pending {
            color: #ef6c00;
            font-weight: bold;
        }

        .status-partial {
            color: #1565c0;
            font-weight: bold;
        }

        @media (max-width: 900px) {
            .sidebar {
                width: 190px;
            }

            .report-cards {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 600px) {
            .container {
                flex-direction: column;
            }

            .sidebar {
                width: 100%;
                min-height: auto;
            }

            .report-cards {
                grid-template-columns: 1fr;
            }

            .main {
                padding: 15px;
            }
        }
    </style>
</head>

<body>

<div class="container">

    <!-- Sidebar -->
    <div class="sidebar">

        <h2>Hospital Billing</h2>

        <a href="${pageContext.request.contextPath}/billing/dashboard">
            Dashboard
        </a>

        <a href="${pageContext.request.contextPath}/patients">
            Patients
        </a>

        <a href="${pageContext.request.contextPath}/services">
            Services
        </a>

        <a href="${pageContext.request.contextPath}/bills">
            Bills
        </a>

        <a href="${pageContext.request.contextPath}/payments">
            Payments
        </a>

        <a href="${pageContext.request.contextPath}/insurance">
            Insurance
        </a>

        <a href="${pageContext.request.contextPath}/government-portal">
            Government Portal
        </a>

        <a href="${pageContext.request.contextPath}/summary">
            Summary
        </a>

        <a href="${pageContext.request.contextPath}/reports"
           class="active">
            Reports
        </a>

        <a href="${pageContext.request.contextPath}/logout"
           class="logout">
            Logout
        </a>

    </div>


    <!-- Main -->
    <div class="main">

        <div class="header">
            <h1>Billing Reports</h1>
            <p>Generate and view hospital billing reports</p>
        </div>


        <!-- Report Selection -->
        <div class="report-box">

            <h2>Generate Report</h2>

            <form action="${pageContext.request.contextPath}/reports/generate"
                  method="get">

                <div class="form-row">

                    <div class="form-group">
                        <label for="reportType">Report Type</label>

                        <select id="reportType"
                                name="reportType"
                                required>

                            <option value="">
                                Select Report
                            </option>

                            <option value="daily">
                                Daily Billing Report
                            </option>

                            <option value="monthly">
                                Monthly Billing Report
                            </option>

                            <option value="payment">
                                Payment Report
                            </option>

                            <option value="insurance">
                                Insurance Report
                            </option>

                            <option value="pending">
                                Pending Bills Report
                            </option>

                            <option value="patient">
                                Patient Billing Report
                            </option>

                        </select>
                    </div>


                    <div class="form-group">
                        <label for="fromDate">
                            From Date
                        </label>

                        <input type="date"
                               id="fromDate"
                               name="fromDate"
                               required>
                    </div>


                    <div class="form-group">
                        <label for="toDate">
                            To Date
                        </label>

                        <input type="date"
                               id="toDate"
                               name="toDate"
                               required>
                    </div>

                </div>


                <div class="button-row">

                    <button type="submit"
                            class="btn btn-generate">
                        Generate Report
                    </button>

                    <button type="reset"
                            class="btn btn-reset">
                        Reset
                    </button>

                </div>

            </form>

        </div>


        <!-- Report Summary -->
        <div class="report-cards">

            <div class="card">
                <h3>Total Bills</h3>
                <p>${totalBills != null ? totalBills : 0}</p>
            </div>

            <div class="card">
                <h3>Gross Amount</h3>
                <p>₹ ${grossAmount != null ? grossAmount : 0}</p>
            </div>

            <div class="card">
                <h3>Paid Amount</h3>
                <p>₹ ${paidAmount != null ? paidAmount : 0}</p>
            </div>

            <div class="card">
                <h3>Balance Amount</h3>
                <p>₹ ${balanceAmount != null ? balanceAmount : 0}</p>
            </div>

        </div>


        <!-- Report Table -->
        <div class="table-box">

            <h2>Report Details</h2>

            <table>

                <thead>
                    <tr>
                        <th>Bill ID</th>
                        <th>Patient ID</th>
                        <th>Bill Date</th>
                        <th>Gross Amount</th>
                        <th>Discount</th>
                        <th>Tax</th>
                        <th>Net Amount</th>
                        <th>Paid Amount</th>
                        <th>Balance</th>
                        <th>Status</th>
                    </tr>
                </thead>

                <tbody>

                    <c:choose>

                        <c:when test="${not empty reports}">

                            <c:forEach var="report"
                                       items="${reports}">

                                <tr>

                                    <td>${report.billId}</td>

                                    <td>${report.patientId}</td>

                                    <td>${report.billDate}</td>

                                    <td>${report.grossAmount}</td>

                                    <td>${report.discountAmount}</td>

                                    <td>${report.taxAmount}</td>

                                    <td>${report.netAmount}</td>

                                    <td>${report.paidAmount}</td>

                                    <td>${report.balanceAmount}</td>

                                    <td>

                                        <c:choose>

                                            <c:when test="${report.paymentStatus == 'PAID'}">
                                                <span class="status-paid">
                                                    PAID
                                                </span>
                                            </c:when>

                                            <c:when test="${report.paymentStatus == 'PARTIALLY_PAID'}">
                                                <span class="status-partial">
                                                    PARTIALLY PAID
                                                </span>
                                            </c:when>

                                            <c:otherwise>
                                                <span class="status-pending">
                                                    PENDING
                                                </span>
                                            </c:otherwise>

                                        </c:choose>

                                    </td>

                                </tr>

                            </c:forEach>

                        </c:when>

                        <c:otherwise>

                            <tr>
                                <td colspan="10"
                                    style="text-align:center; padding:25px;">
                                    No report data available.
                                </td>
                            </tr>

                        </c:otherwise>

                    </c:choose>

                </tbody>

            </table>

        </div>

    </div>

</div>
<button type="button"
            class="previous-btn"
            onclick="window.location.href='summary.jsp'">
            Previous
            </button>
     
    </body>
</html>