# Student-app

## Overview
StudentApp is a Java-based web application that implements a student management system using DAO (Data Access Object) architecture. The application allows users to perform CRUD (Create, Read, Update, Delete) operations on student records stored in a MySQL database.

## Features
- Add new students to the database.
- View a list of all students.
- Update student details.
- Delete student records.
- Search for students by name.

## Technologies Used
- **Backend:** Java, Servlets, JSP
- **Database:** MySQL
- **Frontend:** HTML, CSS, JavaScript
- **Development Tools:** Eclipse, Apache Tomcat

## Setup Instructions
### Prerequisites
- Install **Java JDK (8 or later)**
- Install **Apache Tomcat (9 or later)**
- Install **MySQL Server**
- Install an **IDE (Eclipse/IntelliJ)**

### Database Configuration
1. Create a MySQL database named `studentdb`.
2. Run the following SQL script to create the required table:
   ```sql
   CREATE TABLE students (
       id INT PRIMARY KEY AUTO_INCREMENT,
       name VARCHAR(100),
       age INT,
       email VARCHAR(100)
   );
   ```
3. Update database connection details in `Connector.java`:
   ```java
   private static final String URL = "jdbc:mysql://localhost:3306/studentdb";
   private static final String USER = "root";
   private static final String PASSWORD = "your_password";
   ```

### Running the Application
1. Import the project into **Eclipse**.
2. Add the project to the **Tomcat server**.
3. Start the server and access the application at:
   ```
   http://localhost:8080/StudentAppDAO
   ```

## Usage
- Open the homepage to see the list of students.
- Use the **Add Student** form to insert new records.
- Click **Edit** to update student details.
- Click **Delete** to remove a student from the database.
- Use the search bar to find students by name.

## Contributing
Feel free to contribute by improving features, fixing bugs, or optimizing performance. Fork the repository and submit a pull request!

## License
This project is licensed under the MIT License.

