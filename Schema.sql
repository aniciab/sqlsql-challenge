-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/jb8Vqs
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
CREATE TABLE "Titles" (
    "Titles_ID" VARCHAR   NOT NULL,
    "Title_Name" VARCHAR   NOT NULL,
    PRIMARY KEY ("Titles_ID")
);
CREATE TABLE "Employee" (
    "Emp_No" INT   NOT NULL,
    "Emp_title_ID" VARCHAR   NOT NULL,
    "Birth_date" INT   NOT NULL,
    "First_Name" VARCHAR   NOT NULL,
    "Last_Name" VARCHAR   NOT NULL,
    "Sex" VARCHAR   NOT NULL,
    "Hire_date" INT   NOT NULL,
    PRIMARY KEY ("Emp_No"),
	FOREIGN KEY("Emp_title_ID") REFERENCES "Titles" ("Titles_ID")
);
CREATE TABLE "Department" (
    "Dept_No" VARCHAR   NOT NULL,
    "Dept_Name" VARCHAR   NOT NULL,
    PRIMARY KEY ("Dept_No")
);
CREATE TABLE "Dept_Manager" (
    "Dept_No" VARCHAR   NOT NULL,
    "Emp_No" INT   NOT NULL,
    PRIMARY KEY ("Dept_No","Emp_No"),
	FOREIGN KEY("Emp_No") REFERENCES "Employee" ("Emp_No"),
	FOREIGN KEY("Dept_No") REFERENCES "Department" ("Dept_No")
);



CREATE TABLE "Dept_Emp" (
    "Emp_No" INT   NOT NULL,
    "Dept_No" VARCHAR   NOT NULL,
    PRIMARY KEY ("Emp_No","Dept_No"),
	FOREIGN KEY("Emp_No") REFERENCES "Employee" ("Emp_No"),
	FOREIGN KEY("Dept_No") REFERENCES "Department" ("Dept_No")
);

CREATE TABLE "Salaries" (
    "Emp_No" INT   NOT NULL,
    "Salary" INT   NOT NULL,
    PRIMARY KEY ("Emp_No"),
	FOREIGN KEY("Emp_No") REFERENCES "Employee" ("Emp_No")
);






commit;