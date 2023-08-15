-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--- Entity Relationship Diagram of the tables
--- specified data types, primary keys, foreign keys, and other constraints


CREATE TABLE "Departments" (
    "Department_no" INTEGER   NOT NULL,
    "Department_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "Department_no"
     )
);

CREATE TABLE "Titles" (
    "Title_id" INTEGER   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_id"
     )
);

CREATE TABLE "Employees" (
    "Emp_no" INTEGER   NOT NULL,
    "Emp_title_id" INTEGER   NOT NULL,
    "Birth_date" Date   NOT NULL,
    "First_name" VARCHAR   NOT NULL,
    "Last_name" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Hire_date" Date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Depart_Emp" (
    "Emp_no" INTEGER   NOT NULL,
    "Department_no" INTEGER   NOT NULL,
    CONSTRAINT "pk_Depart_Emp" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Dept_Manager" (
    "Dept_no" INTEGER   NOT NULL,
    "Emp_no" INTEGER   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_no" INTEGER   NOT NULL,
    "Salary" INTEGER   NOT NULL
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_title_id" FOREIGN KEY("Emp_title_id")
REFERENCES "Titles" ("Title_id");

ALTER TABLE "Depart_Emp" ADD CONSTRAINT "fk_Depart_Emp_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Depart_Emp" ADD CONSTRAINT "fk_Depart_Emp_Department_no" FOREIGN KEY("Department_no")
REFERENCES "Departments" ("Department_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Departments" ("Department_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

