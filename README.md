# 🏥 Doctor Appointment Management System (DAMS)

*A Web-Based Appointment Booking Platform Built Using PHP & MySQL*

---

## 📌 **Project Overview**

The **Doctor Appointment Management System (DAMS)** is a web-based platform designed to simplify and digitalize the process of booking doctor appointments. It provides an easy-to-use interface for **patients/users** to schedule appointments and a smart **dashboard for doctors/admins** to manage all appointment-related operations efficiently.

This system reduces manual work, minimizes scheduling errors, and provides a fast, structured way to manage healthcare appointments — improving convenience for both patients and doctors.

---

## 🎯 **Key Features**

### 👤 **User (Patient) Module**

* View available doctor specializations
* Select preferred doctor, date, and time
* Book an appointment through a form
* Check appointment status using:

  * Appointment Number
  * Name
  * Phone number
* Submit feedback/review about the clinic or service

---

### 🩺 **Doctor (Admin) Module**

* Secure login to doctor dashboard
* View:

  * New Appointments
  * Approved Appointments
  * Cancelled Appointments
  * Total Appointments
* Approve or Cancel appointment requests
* Add remarks/comments to appointments
* View full details of each appointment
* Generate reports based on date range
* Manage profile (update password, profile info)
* Receive notifications for new appointments

---

### 📑 **Modules Included**

1. New Appointments
2. Approved Appointments
3. Cancelled Appointments
4. Total Appointments
5. Search Appointment (by ID/Name/Mobile)
6. Report Generation
7. Review/Feedback System

---

## 🛠 **Technology Stack**

### **Frontend:**

* HTML
* CSS
* JavaScript
* Bootstrap

### **Backend:**

* PHP (Core PHP)
* MySQL Database (XAMPP Server)

### **Server:**

* Apache (from XAMPP)

### **IDE:**

* Visual Studio Code

### **Database Name:**

`damsmsdb`

---

## 💻 **System Requirements**

### **Hardware:**

* Processor: Intel Core i3 or above
* RAM: 4GB (8GB recommended)
* Hard Disk: Minimum 20GB

### **Software:**

* Windows OS
* XAMPP (Apache + MySQL)
* Web Browser (Chrome, Firefox, Edge)

---

## 🏗 **System Architecture**

### 🧑‍⚕ Admin Dashboard Includes:

* Appointment Management
* Report Module
* Profile Management
* Feedback Reader
* Notifications

### 👨‍💻 User Workflow:

1. View Specializations
2. Choose Doctor
3. Book Appointment
4. See Confirmation Message
5. Check Appointment Status
6. View Approved/Cancelled Messages
7. Submit Feedback

---

## 🗂 **Database Structure (Important Tables)**

### `tblappointment`

* AppointmentNumber
* Name
* Email
* MobileNumber
* Specialization
* Doctor
* AppointmentDate
* AppointmentTime
* Status
* Remark

### `tbldoctor`

* ID
* FullName
* Mobile Number
* Email
* Specialization
* Password
* ApplyDate

### `tblpage`

* PageType
* PageTitle
* PageDescription

### `tblspecialization`

* ID
* Specialization

---

## 🧩 **Key Functional Flow**

### **1. Appointment Booking**

User submits form → System validates → Appointment saved → Generates random Appointment Number.

### **2. Admin Action**

Doctor logs in → Views new appointments → Approves/Rejects → Adds remark → Status updated.

### **3. Status Check**

User enters Appointment Number / Name / Phone → System fetches status → Displays message & details.

---

## 📸 **Screenshots**
**About section:**
<img width="1060" height="544" alt="image" src="https://github.com/user-attachments/assets/51d96906-ec03-40ed-9632-4b3798a6ad49" />

**Services**
<img width="1054" height="673" alt="image" src="https://github.com/user-attachments/assets/5ff38b6a-712b-4901-a95a-41886fd7ad39" />

**Specialization of doctor page**
<img width="1069" height="1096" alt="image" src="https://github.com/user-attachments/assets/01f4cfed-3955-49d8-9c49-cf0e36b4930a" />


## 🧪 **Sample PHP Code (Database Connection)**

```php
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','damsmsdb');

try {
    $dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,
    array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
} catch (PDOException $e) {
    exit("Error: " . $e->getMessage());
}
```

---

## 🚀 **How to Run This Project Locally**

### **Step 1 — Download or Code**

```
[git clone https://github.com/your-username/Doctor-Appointment-Management-System.git](https://github.com/ManojGowdaG15/Doctor-Appointment-Management-System-PHP-)
```

### **Step 2 — Move to XAMPP htdocs**

Copy the project folder → paste into:

```
C:/xampp/htdocs/
```

### **Step 3 — Start Server**

Open XAMPP → Start **Apache** & **MySQL**

### **Step 4 — Import Database**

1. Open phpMyAdmin
2. Create database: `damsmsdb`
3. Import the `.sql` file

### **Step 5 — Run Project**

Open browser and enter:

```
http://localhost/DAMS/
```

---

## 🛡 **Future Improvements**

* Online payment gateway
* Real-time doctor availability
* Telemedicine/video consultation integration
* SMS/Email notifications
* Mobile app version
* Integration with wearable health data
* Improved UI with modern frameworks

---

## 🏁 **Conclusion**

The **Doctor Appointment Management System (DAMS)** provides a modern, efficient, and user-friendly solution for booking and managing healthcare appointments. It simplifies patient-doctor interactions, reduces manual workload, and enhances service quality in clinics and hospitals.

---

# 👤 **Author**

**Manoj Gowda G**
MCA Student | Web Developer | Backend Developer
Bengaluru, India
