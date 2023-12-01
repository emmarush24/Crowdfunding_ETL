--Drop tables if they exist
DROP TABLE campaign;
Drop TABLE category;
DROP TABLE contacts;
DROP TABLE subcategory;

--Create category table
CREATE TABLE category(
	category_id VARCHAR(30),
	category VARCHAR(30),
	PRIMARY KEY (category_id)
);
--Verify category table creation
SELECT * FROM category;

--Create contacts table
CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(50),
	PRIMARY KEY (contact_id)
);
--Verify contacts table creation
SELECT * FROM contacts;

--Create subcategory table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(8),
	subcategory VARCHAR(30),
	PRIMARY KEY (subcategory_id)
);
--Verify subcategory table creation
SELECT * FROM subcategory;

--Create campaign table
CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR,
	description VARCHAR,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(30),
	backers_count INT NOT NULL,
	country VARCHAR(30),
	currency VARCHAR(5),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(30),
	subcategory_id VARCHAR(30),
	PRIMARY KEY (cf_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id)
);
--Verify campaign table creation
SELECT * campaign;

-- Verify each table has the correct data with a SELECT statement
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM campaign;
SELECT * FROM subcategory;
