# CrudProject

A Spring MVC application facilitating CRUD operations for managing product information.

## Introduction

CrudProject is a Spring MVC application designed for improving the logistics operations in a manufacturing environment. It provides a user-friendly interface for managing products, leveraging Spring, Hibernate, and MySQL.

## Project Structure
```CrudProject
|-- .idea
|-- src
|   |-- main
|   |   |-- java
|   |   |   |-- productcrudapp
|   |   |   |   |-- controller
|   |   |   |   |   |-- MainController
|   |   |   |   |-- dao
|   |   |   |   |   |-- ProductDao
|   |   |   |   |-- model
|   |   |   |   |   |-- Product
|   |   |   |-- resources
|   |   |-- webapp
|   |       |-- WEB-INF
|   |           |-- views
|   |               |-- add_product_form.jsp
|   |               |-- base.jsp
|   |               |-- index.jsp
|   |               |-- not_found.jsp
|   |               |-- search_result.jsp
|   |               |-- update_form.jsp
|   |           |-- CrudProject-servlet.xml
|   |           |-- web.xml
|   |-- target
|-- .gitignore
|-- pom.xml
|-- README.md
```

## Database Configuration

CrudProject uses XML configuration files for Spring and Hibernate, defining beans, database settings, and servlet configuration.

## Usage

To use CrudProject, follow these steps:
1. Clone the Repository
Clone the CrudProject repository to your local machine using the following command:
bash
Copy code
git clone https://github.com/YourUsername/CrudProject.git
2. Database Configuration
Configure the database settings in the CrudProject-servlet.xml file located in the src/main/resources directory. Update the url, username, and password properties according to your MySQL setup.
3. Build the Project
Navigate to the project's root directory and build it using Maven:
bash
Copy code
mvn clean install
4. Deploy to a Servlet Container
Locate the generated WAR file in the target directory.
Deploy the WAR file to your preferred servlet container (e.g., Apache Tomcat).
5. Start the Servlet Container
Start your servlet container, and the application will be accessible at http://localhost:8080/CrudProject.
6. Access the Application
Open your web browser and navigate to http://localhost:8080/CrudProject to access the CrudProject application.
7. Interact with the Application
Use the application to perform CRUD operations on product information.
Explore the features provided by the MainController, such as adding products, updating, deleting, and searching.

## Dependencies

Key dependencies include Spring MVC, Spring ORM, MySQL Connector, Hibernate, JSTL, JUnit, and Servlet API.

## Deployment

Follow these steps to deploy the project:
1. Build the project using `mvn clean install`.
2. Locate the generated WAR file in the `target` directory.
3. Deploy the WAR file to a servlet container (e.g., Apache Tomcat).
4. Start the servlet container and access the application at `http://localhost:8080/CrudProject`.

## License

This project is developed for learning purposes. Use with caution and for educational purposes.

## Contact Information

For questions or feedback, contact Cubanx00td at rubangill33@gmail.com.

