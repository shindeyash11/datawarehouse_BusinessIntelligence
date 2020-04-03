# datawarehouse_BusinessIntelligence
This repository contains datawarehousing and Business Intelligence operations using SSIS, SSAS, SSMS, SSDT

# DATA BULK-IN TECHNIQUE (SSMS)

It is one of the methods using which the data can be imported in SSMS. We have to use command prompt here.
We have imported data from Health_Care_Provider_Credential_Data.csv to Health database in SSMS.
First, we define the path and the source followed by the Data types of the columns. After assigning the correct character length, the rows gets transferred to the Health database in SSMS.
As we can see 1,575,112 rows are copied in Health Database’s test table.

# DATA BULK-OUT TECHNIQUE (SSMS)

It is one of the methods using which the data can be exported from SSMS. We have to use command prompt here.
We have exported data from Health database in SSMS to Health_Care_Provider_Credential_Data.csv .
First, we define the path and the source followed by the Data types of the columns. After assigning the correct character length, the rows gets transferred to the Health database to flat file.
As we can see 1,575,112 rows are transferred in Health datafile.

# STAGING TABLE FORMATION (SSDT)

Creating the staging table is one of the important step in DW.
Staging is a temporary table in which you import the database from different environment for stability of the data.
.dtsx package is imported in SSDT and created a data flow task for the same.
Now this data will transfer as follows: .dtsx file (Flat file Source)→ OLEDB Source → OLEDB Destination
Further this data in the staging table can be use for LOOKUP tables.

# DATA PROFILING (SSMS, TALEND)
#A. Using SSMS:

In this activity, we are learning about 2 methods to learn data profiling and later figure out which one works the best.
There are plenty of NULL Values in the health data set in every column.
If these NULL Values were omitted the data set would have been more structured and smaller in size.
Some entries have birth year 1800 and FirstIssueDate more than 19470000 which makes no sense.
Between year 1860 to 1900 number of records reached lowest possible value And raised exponentially after year 1900.
Dates in the database are recorded in YYYYMMDD format, if it was in default SQL format it would have been better to analyze data.

#B.Using Talend: 

Following is the simple statistical analysis performed over data on Talend. In which as we can see, all the types of counts such as Row, Null, Distinct, Unique, Duplicate, and Blank are obtained on a easy click. Unlike while performing the profiling using SSDT where there would be lengthy commands and highly prone to errors with long time to process data, Talend uses certain commands to get quick results.
In this second analysis, I have made an effort to replicate one of the findings from my HW6 where I concluded there were very less No. of records between year 1860 to 1900 using Tableau. Clearly, in the following analysis, it hasn’t come out very precise.
Below is the tableau representation of the same matter.

# ERROR HANDLING (SSDT)

In this activity, we will be learning to handle errors in the dataset.
Duplicate records, bad status, bad credential type are sorted using LOOKUP tables and further put into destination table and error table.
1. Duplicate Records
2. Bad Status
3. Bad Prefix
4. Bad Credential Type

# LOOKUP TABLES (ER STUDIO)

This activity taught us to export the staging tables into ER Studio.
We use ER Studio Data Architect to manage physical model naming standards (especially in sensitive and sometimes ambiguous shorthand.
The tables are created and the relationship is maintained showing primary keys, Foreign keys and ERROR and DESTINATION Table.

# SQL KEY GENERATOR (SSMS)

It’s the process of adding prefix to the attribute in column.
We have used right function to put prefix before the string, this process is called 'Padding'.

# SLOWLY CHANGING DIMENSIONS (SSMS,SSDT)

Source flat file:
Selecting Dimension Table and Keys for SCD 
Package dtsx design
Initial Load
Change in Zipcode of betty, Name of John, and Raise for Bob
New Entry 
Bob Jones changes name to Robert Jones
Delete Row

# SSAS EXCERCISE
First, we pulled Adventure Works 2017 DW from SSMS to SSDT (visual Studio) since Analytical services were not installed properly in the first go, we rectified the installation error.
Once, created a new project in SSDT called HW13 SSAS exercise. 
Under this project I have created as follows: 
Data Sources
Data Sources Views
Cubes
Dimensions
Later These dimensions are processed according to the need and exported into an excel file which shows pivot tables of the work.
1.Data Sources:	 
We have used the services account to create a data source to select ‘Adventure Work DW2017’ from SSMS

# 2.Data Source Views: 
By selecting required columns from tables of Adventure Works DW2017 we have created the schema ensuring all the connections yields no error.

# 3.Cubes

# 4.Dimensions:

We have selected 6 dimensions for this analysis.
o	Production
o	Date
o	Sales
o	Customer 
o	Product
o	Currency

# Production Dimension:
 
In this screenshot, we can see how attributes are pulled from attributes view and arranged by hierarchies.
 
Attribute relationship is maintained by connecting the attributes according to the hierarchy and presence of attributes in a table.
Correct properties are assigned, by selecting correct column name 
 
Under source, Key column and Name column are assigned according to the sequence in attribute relationships.
Post this step, the dimension is processed (executed) and once done, cube is executed and saved in an excel format which looks as follows:

 
This table shows columns values as presented in hierarchy.
# Dates Dimension:
 
In this screenshot, we can see how attributes are pulled from attributes view and arranged by hierarchies.
 
Attribute relationship is maintained by connecting the attributes according to the hierarchy and presence of attributes in a table.
Correct properties are assigned, by selecting correct column name  
Under source, Key column and Name column are assigned according to the sequence in attribute relationships.
Post this step, the dimension is processed (executed) and once done, cube is executed and saved in an excel format which looks as follows:
 
# Sales Territories:
  
Under source, Key column and Name column are assigned according to the sequence in attribute relationships.
Post this step, the dimension is processed (executed) and once done, cube is executed and saved in an excel format which looks as follows:
 
Attribute relationship is maintained by connecting the attributes according to the hierarchy and presence of attributes in a table.

Correct properties are assigned, by selecting correct column name
 
Under source, Key column and Name column are assigned according to the sequence in attribute relationships.
Post this step, the dimension is processed (executed) and once done, cube is executed and saved in an excel format which looks as follows:
 
# Customer Dimension:
 
Under source, Key column and Name column are assigned according to the sequence in attribute relationships.
Post this step, the dimension is processed (executed) and once done, cube is executed and saved in an excel format which looks as follows:
 
Attribute relationship is maintained by connecting the attributes according to the hierarchy and presence of attributes in a table.

Correct properties are assigned, by selecting correct column name
 
Under source, Key column and Name column are assigned according to the sequence in attribute relationships.
Post this step, the dimension is processed (executed) and once done, cube is executed and saved in an excel format which looks as follows:
 # Product Dimension:
 
Under source, Key column and Name column are assigned according to the sequence in attribute relationships.
Post this step, the dimension is processed (executed) and once done, cube is executed and saved in an excel format which looks as follows:
  
Attribute relationship is maintained by connecting the attributes according to the hierarchy and presence of attributes in a table.

Correct properties are assigned, by selecting correct column name
 
Under source, Key column and Name column are assigned according to the sequence in attribute relationships.
Post this step, the dimension is processed (executed) and once done, cube is executed and saved in an excel format which looks as follows:
 


 


