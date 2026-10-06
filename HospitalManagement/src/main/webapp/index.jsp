<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <title>Hospital Billing Dashboard</title>

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0">
<style>

    /* RESET */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, Helvetica, sans-serif;
    }

    /* BODY */
    body {
        background: rgb(242, 249, 251), 248, 251);
        color: #333;
    }

    /* SIDEBAR */
    .sidebar {
        position: fixed;
        left: 0;
        top: 0;
        width: 250px;
        height: 100vh;
        background: rgb(0, 0, 128);
        color: rgb(192, 192, 192);
        padding: 20px 0;
    }

    .logo {
        text-align: center;
        padding: 10px 20px 30px;
        font-size: 25px;
        font-weight: bold;
    }

    .logo span {
        color: rgb(255, 128, 192), 128, 255);
    }

    .menu {
        list-style: none;
    }

    .menu li {
        margin: 5px 10px;
    }

    .menu a {
        display: block;
        padding: 14px 20px;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-size: 15px;
    }

    .menu a:hover,
    .menu a.active {
        background: #245a7d;
    }

    .menu-icon {
        margin-right: 10px;
    }

    /* MAIN CONTENT */
    .main {
        margin-left: 250px;
        padding: 25px;
    }

    /* HEADER */
    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 25px;
    }

    .header h1 {
        font-size: 28px;
        color: #173b57;
    }

    .header p {
        color: #777;
        margin-top: 5px;
    }

    .user {
        background: white;
        padding: 10px 18px;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    }

    /* SUMMARY CARDS */
    .cards {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
        margin-bottom: 25px;
    }

    .card {
        background: white;
        padding: 22px;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .card-info h3 {
        font-size: 14px;
        color: #777;
        margin-bottom: 10px;
    }

    .card-info h2 {
        font-size: 26px;
        color: #173b57;
    }

    .card-icon {
        width: 50px;
        height: 50px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        background: rgb(232, 243, 251);
        font-size: 22px;
    }

    /* CONTENT GRID */
    .content-grid {
        display: grid;
        grid-template-columns: 2fr 1fr;
        gap: 20px;
    }

    .panel {
        background: white;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    }

    .panel-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }

    .panel-header h2 {
        font-size: 19px;
        color: #173b57;
    }

    .view-all {
        color: #1976d2;
        text-decoration: none;
        font-size: 14px;
    }

    /* TABLE */
    table {
        width: 100%;
        border-collapse: collapse;
    }

    th {
        background: #f5f7f9;
        text-align: left;
        padding: 12px;
        font-size: 13px;
        color: #555;
    }

    td {
        padding: 13px 12px;
        border-bottom: 1px solid #eee;
        font-size: 14px;
    }

    .status {
        padding: 5px 10px;
        border-radius: 15px;
        font-size: 12px;
    }

    .paid {
        background: #dff5e5;
        color: #198754;
    }

    .pending {
        background: #fff3cd;
        color: #997404;
    }

    .partial {
        background: #dbeafe;
        color: #2563eb;
    }

    /* QUICK ACTIONS */
    .actions {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 12px;
    }

    .action {
        border: none;
        padding: 15px;
        background: #f5f8fa;
        border-radius: 8px;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        color: #173b57;
        font-size: 14px;
    }

    .action:hover {
        background: #e4f1f8;
    }

    .action-icon {
        display: block;
        font-size: 25px;
        margin-bottom: 7px;
    }

    /* RESPONSIVE DESIGN */
    @media (max-width: 1000px) {

        .cards {
            grid-template-columns: repeat(2, 1fr);
        }

        .content-grid {
            grid-template-columns: 1fr;
        }
    }

    @media (max-width: 700px) {

        .sidebar {
            width: 70px;
        }

        .logo {
            font-size: 0;
        }

        .logo span {
            font-size: 20px;
        }

        .menu a {
            text-align: center;
            padding: 15px 5px;
        }

        .menu-text {
            display: none;
        }

        .main {
            margin-left: 70px;
        }

        .cards {
            grid-template-columns: 1fr;
        }
    }

</style>
        


</head>

<body>


<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

    <div class="logo">
        <span>Hospital Billing</span>
    </div>


    <ul class="menu">

        <li>
            <a href="index.jsp"
                 class="active">
                <span class="menu-icon">🏠</span>
                <span class="menu-text">Dashboard</span>
            </a>
            </li>
           
        <li>
            <a href="patient.jsp">
                <a href="patient.jsp">👤 Patient</a>
            </a>
        </li>

        <li>
            <a href="service.jsp">
                <span class="menu-icon">🩺</span>
                <span class="menu-text">Service</span>
            </a>
        </li>

        <li>
            <a href="billing.jsp">
                <span class="menu-icon">🧾</span>
                <span class="menu-text">Bills</span>
            </a>
        </li>

        <li>
            <a href="bill items.jsp">
                <span class="menu-icon">📋</span>
                <span class="menu-text">Bill Items</span>
            </a>
        </li>

        <li>
            <a href="payment.jsp">
                <span class="menu-icon">💳</span>
                <span class="menu-text">Payments</span>
            </a>
        </li>

        <li>
            <a href="insurance.jsp">
                <span class="menu-icon">🛡️</span>
                <span class="menu-text">Insurance</span>
            </a>
        </li>

        <li>
            <a href="government portal.jsp">
                <span class="menu-icon">🏛️</span>
                <span class="menu-text">Government Portal</span>
            </a>
        </li>

        <li>
            <a href="summary.jsp">
                <span class="menu-icon">📊</span>
                <span class="menu-text">Summary</span>
            </a>
        </li>

        <li>
            <a href="reports.jsp">
                <span class="menu-icon">📈</span>
                <span class="menu-text">Reports</span>
            </a>
        </li>

    </ul>

</div>


<!-- ================= MAIN ================= -->

<div class="main">

    <!-- HEADER -->

    <div class="header">

        <div>
            <h1>Billing Dashboard</h1>

            
        </div>

        <div class="user">
            👨‍💼 Billing Administrator
        </div>

    </div>


    <!-- ================= SUMMARY CARDS ================= -->

    <div class="cards">

        <!-- PATIENTS -->

        <div class="card">

            <div class="card-info">

                <h3>Total Patients</h3>

                <h2>
                    ${totalPatients != null ? totalPatients : 0}
                </h2>

            </div>

            <div class="card-icon">
                👤
            </div>

        </div>


        <!-- BILLS -->

        <div class="card">

            <div class="card-info">

                <h3>Total Bills</h3>

                <h2>
                    ${totalBills != null ? totalBills : 0}
                </h2>

            </div>

            <div class="card-icon">
                🧾
            </div>

        </div>


        <!-- REVENUE -->

        <div class="card">

            <div class="card-info">

                <h3>Total Revenue</h3>

                <h2>
                    ₹${totalRevenue != null ? totalRevenue : 0}
                </h2>

            </div>

            <div class="card-icon">
                💰
            </div>

        </div>


        <!-- PENDING -->

        <div class="card">

            <div class="card-info">

                <h3>Pending Amount</h3>

                <h2>
                    ₹${pendingAmount != null ? pendingAmount : 0}
                </h2>

            </div>

            <div class="card-icon">
                ⏳
            </div>

        </div>

    </div>


    <!-- ================= CONTENT ================= -->

    <div class="content-grid">


        <!-- RECENT BILLS -->

        <div class="panel">

            <div class="panel-header">

                <h2>Recent Bills</h2>

                <a href="${pageContext.request.contextPath}/bills"
                   class="view-all">
                    View All
                </a>

            </div>


            <table>

                <thead>

                    <tr>

                        <th>Bill No</th>

                        <th>Patient</th>

                        <th>Date</th>

                        <th>Amount</th>

                        <th>Status</th>

                    </tr>

                </thead>



                <tbody>

                    <c:choose>

                        <c:when test="${not empty recentBills}">

                            <c:forEach var="bill"
                                       items="${recentBills}">

                                <tr>

                                    <td>
                                        ${bill.billNumber}
                                    </td>

                                    <td>
                                        ${bill.patient.name}
                                    </td>

                                    <td>
                                        ${bill.billDate}
                                    </td>

                                    <td>
                                        ₹${bill.totalAmount}
                                    </td>

                                    <td>

                                        <span class="status
                                            ${bill.status == 'PAID'
                                            ? 'paid'
                                            : bill.status == 'PARTIAL'
                                            ? 'partial'
                                            : 'pending'}">

                                            ${bill.status}

                                        </span>

                                    </td>

                                </tr>

                            </c:forEach>

                        </c:when>


                        <c:otherwise>

                            <tr>

                                <td colspan="5"
                                    style="text-align:center">

                                    No bills available

                                </td>

                            </tr>

                        </c:otherwise>

                    </c:choose>

                </tbody>

            </table>

        </div>


        <!-- QUICK ACTIONS -->

        <div class="panel">

            <div class="panel-header">

                <h2>Quick Actions</h2>

            </div>


            <div class="actions">


                <a class="action"
                   href="${pageContext.request.contextPath}/bills/new">

                    <span class="action-icon">
                        🧾
                    </span>

                    Create Bill

                </a>


                <a class="action"
                   href="${pageContext.request.contextPath}/patient/new">

                    <span class="action-icon">
                        👤
                    </span>

                    Add Patient

                </a>


                <a class="action"
                   href="${pageContext.request.contextPath}/service/new">

                    <span class="action-icon">
                        🩺
                    </span>

                    Service

                </a>


                <a class="action"
                   href="${pageContext.request.contextPath}/payment/new">

                    <span class="action-icon">
                        💳
                    </span>

                    Record Payment

                </a>


                <a class="action"
                   href="${pageContext.request.contextPath}/insurance">

                    <span class="action-icon">
                        🛡️
                    </span>

                    Insurance

                </a>


                <a class="action"
                   href="${pageContext.request.contextPath}/reports">

                    <span class="action-icon">
                        📊
                    </span>

                    View Reports

                </a>

            </div>

        </div>

    </div>

</div>
</body>

</html>