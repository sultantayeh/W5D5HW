INSERT INTO dealership(dealership_id,_name,address,phone)
VALUES('1','Stokes Toyota','456 FAKE ST BLUFFTON, SC, 53421','(805) 346-3957');


INSERT INTO car_info(car_id,_year,make,model,_cost,_condition)
VALUES
	('1','2022','Toyota','Camry',25845.00, 'NEW'),
	('2','2022','Toyota','Camry',25845.00, 'NEW'),
	('3','2022','Toyota','Camry',25845.00, 'NEW'),
	('4','2022','Toyota','Corolla',00,'OWNED'),
	('5','2017','Toyota','Tacoma',15888.00, 'USED'),
	('6', '2020','Honda','Civic',23465.00, 'USED'),
	('7', '2024','Toyota','4Runner',42846.00, 'NEW'),
	('8', '2024','Toyota','4Runner',42846.00, 'NEW'),
	('9', '2024','Toyota','4Runner',42846.00, 'NEW'),
	('10', '2024','Toyota','4Runner',42846.00, 'NEW'),
	('11', '2016','Toyota','Rav4',22744.00, 'USED'),
	('12','2018','Toyota','Tacoma',00,'OWNED'),
	('13','2022','Toyota','Rav4',00,'OWNED');

INSERT INTO services(services_dpt_id,service_c_id,ticket_id)
VALUES('1','1','1');

INSERT INTO service_car(car_id,service_c_id,ticket_id)
VALUES
	('4','1','1'),
	('12','2','2'),
	('13','3','3');

INSERT INTO service_ticket (ticket_id,service_date,service_time,completion_time,service_c_id)
VALUES
	('1', '2023 10 23', '10:30am', '11:30am', '1'),
	('2', '2023 06 01', '11:30am', '12:30pm', '2'),
	('3', '2003 03 04', '12:30pm', '1:00pm', '3');

INSERT INTO service_customer(service_c_id,first_name,last_name,phone_num,email,address,payment_info)
VALUES
	('1', 'Kurt', 'Cobain', '(888) 368-8364', 'kcobian@nirvanarock.com','123 memory ln 19807', '0954 0394 7539 3829'),
	('2', 'Krist', 'Novoselic', '(374) 294-2983', 'novabassman@nirvanarock.com', '789 fantacy LN 19807', '3904 3573 5027 3940'),
	('3', 'Dave', 'Grohl', '(546) 294-3945', 'maindrummerboi@nirvanarock.com','483 crazy town st. 19900', '2094 2048 5738');

INSERT INTO sales(sales_dpt_id,sales_c_id,salesmen_id,invoice_id)	
VALUES ('1', '1', '1', '1');

INSERT INTO invoice(invoice_id, purchase_date, total_price, car_id, salesmen_id, sales_c_id)
VALUES
	('1', '2023 10 23', 26645.00, '3', '1', '2'),
	('2', '2023 8 01', 42846.00, '8', '2', '3'),
	('3', '2023 6 22', 15888.00, '5', '1', '1');

INSERT INTO salesmen (salesmen_id, sales_count, first_name, last_name, phone, email)
VALUES
	('1', 2, 'Mark', 'Stevens', '(432) 235-3047', 'mstevens@stokestoyota.com'),
	('2', 1, 'Rick', 'Jameson', '(432) 394-4834', 'rickj@stokestoyota.com');


ALTER TABLE sales_customer DROP COLUMN payment_info;
ALTER TABLE sales_customer ADD COLUMN payment_info VARCHAR;


INSERT INTO sales_customer(sales_c_id,first_name,last_name,phone_num,email,address,payment_info)
VALUES
	('1', 'Biggie', 'Smalls', '(235) 583-1943', 'bigpoppasmalls@trueplaya.com', '245 Wanna Be ln. brooklyn NY', '2305 7846 2948 6049'),
	('2', 'Kendrick', 'Lamar', '(485) 596-3958', 'theoneinfrontofthegun@klamar.com', '123 Money Tree st. Atlanta GA', '0394 2948 4728 2947'),
	('3', 'Lauryn', 'Hill', '(874) 104-5736', 'themiseducation@mslaurynhill.com', '198 Zion rd. Atlanta, GA', '1094 2947 3859 5087');


INSERT INTO car_sale(sales_c_id, invoice_id, car_id)
VALUES
	('1', '3', '5'),
	('2', '1', '3'),
	('3', '2', '8');