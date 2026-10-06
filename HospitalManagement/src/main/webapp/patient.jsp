<!DOCTYPE html>
<html>
<head>

    <title>Patient Billing</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            background:(rgb(192, 192, 192)8, 128), 192, 192), 192, 192), 255, 255);
            color: rgb(192, 192, 192)0, 64, 128);
            padding: 40px;
        }

        /* MAIN CONTAINER */

        .billing-container {
            max-width: 900px;
            margin: auto;
            background: rgb(255, 255, 255);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.10);
        }

        /* HEADER */

        .billing-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .billing-header h1 {
            color: #173b57;
            font-size: 28px;
            margin-bottom: 8px;
        }

        .billing-header p {
            color: #777;
            font-size: 14px;
        }

        /* FORM */

        form {
            width: 100%;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group.full-width {
            grid-column: 1 / 3;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            color: rgb(0, 0, 160)0, 160)0, 128)0, 128);
            margin-bottom: 7px;
        }

        input,
        select,
        textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid rgb(128, 128, 128);
            border-radius: 6px;
            font-size: 15px;
            outline: none;
            background: #fff;
        }

        input:focus,
        select:focus,
        textarea:focus {
            border-color: #1976d2;
            box-shadow: 0 0 4px rgba(25, 118, 210, 0.20);
        }

        textarea {
            resize: vertical;
        }

        /* BILL SECTION */

        .bill-section {
            margin-top: 30px;
            padding-top: 25px;
            border-top: 1px solid #e5e5e5;
        }

        .section-title {
            color: #173b57;
            font-size: 20px;
            margin-bottom: 20px;
        }

        /* BUTTON */

        .button-container {
            text-align: center;
            margin-top: 30px;
        }

        .save-btn {
            background: rgb(0, 0, 128);
            color: white;
            border: none;
            padding: 13px 35px;
            border-radius: 7px;
            font-size: 15px;
            cursor: pointer;
        }

        .save-btn:hover {
            background: #245a7d;
        }

        /* RESET BUTTON */

        .reset-btn {
            background: #e9ecef;
            color: #333;
            border: none;
            padding: 13px 35px;
            border-radius: 7px;
            font-size: 15px;
            cursor: pointer;
            margin-left: 10px;
        }

        .reset-btn:hover {
            background: #d6d9dc;
        }

        /* RESPONSIVE */

        @media (max-width: 700px) {

            body {
                padding: 20px;
            }

            .billing-container {
                padding: 20px;
            }

            .form-grid {
                grid-template-columns: 1fr;
            }

            .form-group.full-width {
                grid-column: 1;
            }

            .save-btn,
            .reset-btn {
                width: 100%;
                margin: 5px 0;
            }
           .navigation-buttons {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
    margin-top: 35px;
    padding-top: 20px;
    border-top: 1px solid #ddd;
}

/* Previous button */
.previous-btn {
    background-color: #6c757d;
    color: white;
    border: none;
    padding: 13px 28px;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: all 0.3s ease;
}

/* Next button */
.next-btn {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 13px 28px;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: all 0.3s ease;
}

/* Previous hover */
.previous-btn:hover {
    background-color: #495057;
    transform: translateX(-5px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

/* Next hover */
.next-btn:hover {
    background-color: #0056b3;
    transform: translateX(5px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.navigation-buttons {
    display: flex;
    justify-content: space-between;
    width: 100%;
    margin-top: 35px;
    padding-top: 20px;
    border-top: 1px solid #ddd;
}

.previous-btn,
.next-btn {
    padding: 12px 28px;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
}

.previous-btn {
    background-color: #6c757d;
    color: white;
}

.next-btn {
    background-color: #007bff;
    color: white;
}
    </style>

</head>

<body>



    <div class="billing-container">

        <div class="billing-header">
            <h1>Patient Billing </h1>
            
        </div>

        <form action="SaveBillServlet" method="post">

            <h2> class="section-title">Patient Information</h2>

            <div class="form-grid">

                <!-- Patient ID -->
                <div class="form-group">
                    <label for="patientId">Patient ID</label>
                    <input type="text"
                           id="patientId"
                           name="patientId"
                           placeholder="Enter patient ID"
                           required>
                </div>

                <!-- Patient Name -->
                <div class="form-group">
                    <label for="patientName">Patient Name</label>
                    <input type="text"
                           id="patientName"
                           name="patientName"
                           placeholder="Enter patient name"
                           required>
                </div>

                <!-- Date of Birth -->
                <div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <input type="date"
                           id="dob"
                           name="dob"
                           required>
                </div>

                <!-- Age -->
                <div class="form-group">
                    <label for="age">Age</label>
                    <input type="number"
                           id="age"
                           name="age"
                           min="0"
                           max="100"
                           placeholder="Enter age"
                           required>
                </div>

                <!-- Gender -->
                <div class="form-group">
                    <label for="gender">Gender</label>

                    <select id="gender"
                            name="gender"
                            required>

                        <option value="">-- Select Gender --</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>

                    </select>
                </div>

                <!-- Mobile Number -->
                <div class="form-group">
                    <label for="mobileNo">Mobile Number</label>

                    <input type="tel"
                           id="mobileNo"
                           name="mobileNo"
                           pattern="[0-9]{10}"
                           maxlength="10"
                           placeholder="Enter 10-digit mobile number"
                           required>
                </div>

                <!-- Email -->
                <div class="form-group">
                    <label for="email">Email</label>

                    <input type="email"
                           id="email"
                           name="email"
                           placeholder="example@gmail.com">
                </div>

                <!-- Emergency Contact -->
                <div class="form-group">
                    <label for="emergencyContact">
                        Emergency Contact
                    </label>

                    <input type="tel"
                           id="emergencyContact"
                           name="emergencyContact"
                           pattern="[0-9]{10}"
                           maxlength="10"
                           placeholder="Emergency contact number"
                           required>
                </div>

                <!-- Address -->
                <div class="form-group full-width">
                    <label for="address">Address</label>

                    <textarea id="address"
                              name="address"
                              rows="3"
                              placeholder="Enter patient address"
                              required></textarea>
                </div>

            </div>


            <!-- BILL INFORMATION -->

            <div class="bill-section">

                <h2 class="section-title">Billing Information</h2>

                <div class="form-grid">

                    <!-- Amount -->
                    <div class="form-group">
                        <label for="amount">Bill Amount</label>

                        <input type="number"
                               id="amount"
                               name="amount"
                               step="0.01"
                               min="0"
                               placeholder="Enter bill amount"
                               required>
                    </div>

                    <!-- Payment Method -->
                    <div class="form-group">

                        <label for="paymentMethod">
                            Payment Method
                        </label>

                        <select id="paymentMethod"
                                name="paymentMethod"
                                required>

                            <option value="">
                                -- Select Payment Method --
                            </option>

                            <option value="Cash">
                                Cash
                            </option>

                            <option value="UPI">
                                UPI
                            </option>

                            <option value="Card">
                                Card
                            </option>

                        </select>

                    </div>

                </div>

            </div>


            <!-- BUTTONS -->

            <div class="button-container">

                <button type="submit"
                        class="save-btn">
                    Save Bill
                </button>

                <button type="reset"
                        class="reset-btn">
                    Clear
                </button>

            </div>

        </form>

       <div class="form-group">
        <label>Address</label>
        <textarea placeholder="Enter patient address"></textarea>
    </div>

    <!-- Navigation Buttons -->
    <div class="navigation-buttons">

        <button type="button"
                class="prev-btn"
                onclick="window.location.href='index.jsp'">
            Previous
        </button>

        <button type="button"
                class="next-btn"
                onclick="window.location.href='service.jsp'">
            Next 
           </button>

    </div>

</form>
</body>
</html>