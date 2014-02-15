relational_algebra_translator
=============================

a web application that would allow the users to run Relational Algebra queries using C# and MS SQL Server


Description: this is a web-based relational algebra translator application.

*********How to manage the IIS 7, create a site on it and view the RAT web app*********
Refer to the related information on the website:  http://technet.microsoft.com/en-us/library/cc771341(v=ws.10).aspx

Go to "Procedure" category on the website, to get the info on how to manage, create a website, 
and view RAT web app via IIS7.


****************How to set up the database********************

1. Make a new database called my_test_db; Username: root; Password:123456
2. Create three tables named userprofile, depart, depart1 respectively
3. Run the query with the inserted test data. 
You may create 3 tables like this:

CREATE TABLE `userprofile` (
  `id` int(11) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `id_card` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
)

CREATE TABLE `depart` (
  `depart_id` int(11) NOT NULL,
  `depart_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`depart_id`)
);

CREATE TABLE `depart1` (
  `depart_id` int(11) NOT NULL,
  `depart_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`depart_id`)
);

INSERT INTO `depart` VALUES (1,'market'),(2,'software');

INSERT INTO `depart1` VALUES (1,'market'),(3,'dev');
