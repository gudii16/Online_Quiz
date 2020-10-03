# Online_Quiz
A web application where students can take a quiz over the internet. 
# Description
Any student can sign up to appear quiz in five subjects namely OS, ACA, CG, Adv Java and IoT.
Database contains the schema as well as corresponding data of the relations used in the project.
GRKM contains the servlets inside src folder, where as WebContent contains the jsp pages.
# Requirements
Eclipse JEE IDE
Apache Tomcat Server
MySQL Database
# Installing
To get application up and running follow the below steps:
  1. Using MySQL Command Line Client create a database "online_quiz".
  2. Using MySQL Workbench import all the realtions in the "online_quiz" database.
  3. Using Ecllipse import GRKM into the workspace.
  4. Right click on GRKM > build path > Configure build path > Libraries tab > click on add external jars.. button > add servlet-api.jar and mysql-connector-java-8.0.17.jar > Apply and Close.
  5. Inside DatabaseConnection.java update the password with password of MySQL server.
  6. Add the Tomcat server in the project.
Now its ready to go.
# Authors
  1. Gurudeep
  2. Rohit
  3. Kriti
  4. Malovika
