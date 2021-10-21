# Taxi Service
Taxi Service  is a simple web application which is developed with Java using technologies such as:

- JDBC
- Servlets
- JSTL
- Maven
- MySQL
- Tomcat

## Application Features
- Add new drivers, cars amd manufacturers
- View drivers, cars, manufacturers
- View cars for a specific driver
- Delete drivers, cars manufacturers
- Export documents as Markdown, HTML and PDF

## How to run application
-  Install MySQL or other RDBMS.
-  Install Tomcat.
-  Fork and clone this project to your repository.
-  In resources directory you will find ``init_db.sql file.`` Use it to initialize you database.
-  Configure connection to your DB in ``src/main/java/mate/util/ConnectionUtil.java`` file. Set your database link, username and password.
- Run  project using Tomcat local server.