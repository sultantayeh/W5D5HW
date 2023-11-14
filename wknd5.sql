-- DEALERSHIP TABLE
CREATE TABLE dealership(
	dealership_id SERIAL PRIMARY KEY,
	_name VARCHAR,
	address VARCHAR,
	phone VARCHAR,
	sales_dpt_id INTEGER,
	services_dpt_id INTEGER,
	FOREIGN KEY (sales_dpt_id) REFERENCES sales(sales_dpt_id),
	FOREIGN KEY (services_dpt_id) REFERENCES services(services_dpt_id)
);
--CAR INFO TABLE
CREATE TABLE car_info(
	car_id SERIAL PRIMARY KEY,
	_year VARCHAR,
	make VARCHAR,
	model VARCHAR,
	_cost NUMERIC(10,2),
	_condition VARCHAR
);

--SERVICES TABLE
CREATE TABLE services(
	services_dpt_id SERIAL PRIMARY KEY,
	service_c_id INTEGER,
	ticket_id INTEGER,
	FOREIGN KEY (service_c_id) REFERENCES service_customer(service_c_id),
	FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id)
);

--SERVICE CAR
CREATE TABLE service_car(
	car_id INTEGER,
	service_c_id INTEGER,
	ticket_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES car_info(car_id),
	FOREIGN KEY (service_c_id) REFERENCES service_customer(service_c_id),
	FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id)
);

--SERVICE TICKETS
CREATE TABLE service_ticket(
	ticket_id SERIAL PRIMARY KEY,
	service_date DATE,
	service_time VARCHAR,
	completion_time VARCHAR,
	service_c_id INTEGER,
	FOREIGN KEY (service_c_id) REFERENCES service_customer(service_c_id)
);

--SERVICE CUSTOMER 
CREATE TABLE service_customer(
	service_c_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	phone_num VARCHAR,
	email VARCHAR,
	address VARCHAR,
	payment_info VARCHAR
);

--SALES TABLE
CREATE TABLE sales(
	sales_dpt_id SERIAL PRIMARY KEY,
	sales_c_id INTEGER,
	salesmen_id INTEGER,
	invoice_id INTEGER,
	FOREIGN KEY (sales_c_id) REFERENCES sales_customer(sales_c_id),
	FOREIGN KEY (salesmen_id) REFERENCES salesmen(salesmen_id),
	FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
);

-- INVOICE TABLE
CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	purchase_date DATE,
	total_price NUMERIC(10,2),
	car_id INTEGER,
	salesmen_id INTEGER,
	sales_c_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES car_info(car_id),
	FOREIGN KEY (salesmen_id) REFERENCES salesmen(salesmen_id),
	FOREIGN KEY (sales_c_id) REFERENCES sales_customer(sales_c_id)
);

-- SALESMEN TABLE
CREATE TABLE salesmen(
	salesmen_id SERIAL PRIMARY KEY,
	sales_count INTEGER,
	first_name VARCHAR,
	last_name VARCHAR,
	phone VARCHAR,
	email VARCHAR
);

--SALE CUSTOMER TABLE
CREATE TABLE sales_customer(
	sales_c_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	phone_num VARCHAR,
	email VARCHAR,
	address VARCHAR,
	payment_info INTEGER,
	salesmen_id INTEGER,
	FOREIGN KEY (salesmen_id) REFERENCES salesmen(salesmen_id)
);

--CAR SALE TABLE 
CREATE TABLE car_sale(
	sales_c_id INTEGER,
	invoice_id INTEGER,
	car_id INTEGER,
	FOREIGN KEY (sales_c_id) REFERENCES sales_customer(sales_c_id),
	FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
	FOREIGN KEY (car_id) REFERENCES car_info(car_id)
);