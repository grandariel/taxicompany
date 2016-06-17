CREATE TABLE Customer
		(customer_id int NOT NULL PRIMARY KEY,
		name varchar(20),
		surname varchar(20),
		address varchar(20));

INSERT INTO Customer VALUES
        (1, 'ADAM',  'SCOTT', 'BARANSKA 3');
INSERT INTO Customer VALUES
        (2, 'STEPHEN',   'KING', 'MAZOWIECKA 8');
INSERT INTO Customer VALUES
        (3, 'JAMES', 'SAINT', 'WYZNANIECKA 12');
INSERT INTO Customer VALUES
        (4, 'GREGORY',  'ADAMS', 'GROCHOWSKA 341');
INSERT INTO Customer VALUES
        (5, 'DANIEL',  'HAWK', 'ZNIENACKA 5');
INSERT INTO Customer VALUES
        (6, 'JACK',   'FORD', 'KOMPUTEROWA 1');
INSERT INTO Customer VALUES
        (7, 'FRED', 'MILLER', 'GRZYBOWSKA 53');

CREATE PROCEDURE add_customer @id int, @name varchar(20), @surname varchar(20), @address varchar(20) AS
BEGIN
	INSERT INTO Customer VALUES (@id, @name, @surname, @address);
END;
EXECUTE add_customer 8, 'DANIEL', 'HAWK', 'KOSZYKOWA 3';

CREATE PROCEDURE select_customer @id int AS
BEGIN
	SELECT name, surname, address FROM Customer WHERE customer_id=@id;
END;

CREATE PROCEDURE edit_customer @id int, @name varchar(20), @surname varchar(20), @address varchar(20) AS
BEGIN
	UPDATE Customer SET customer_id=@id, name=@name, surname=@surname, address=@address WHERE customer_id=@id;
END;

CREATE PROCEDURE delete_customer @id int AS
BEGIN
	DELETE FROM Customer WHERE customer_id=@id;
END;

EXECUTE select_customer 2;

CREATE TABLE Driver
		(driver_id INT NOT NULL PRIMARY KEY,
		name varchar(20),
		surname varchar(20));

INSERT INTO Driver VALUES
        (1, 'JOHN',  'SMITH');
INSERT INTO Driver VALUES
        (2, 'JAMES',  'ALLEN');
INSERT INTO Driver VALUES
        (3, 'ADAM',   'WARD');
INSERT INTO Driver VALUES
        (4, 'STAN',  'JONES');
INSERT INTO Driver VALUES
        (5, 'PHILIP', 'MARTIN');
INSERT INTO Driver VALUES
        (6, 'JACK',  'BLAKE');
INSERT INTO Driver VALUES
		(7, 'SONNY',  'CLARK');

CREATE PROCEDURE add_employee @id int, @name varchar(20), @surname varchar(20) AS
BEGIN
	INSERT INTO Driver VALUES (@id, @name, @surname);
END;

CREATE PROCEDURE edit_employee @id int, @name varchar(20), @surname varchar(20) AS
BEGIN
	UPDATE Driver SET driver_id=@id, name=@name, surname=@surname WHERE driver_id=@id;
END;

CREATE PROCEDURE delete_employee @id int AS
BEGIN
	DELETE FROM Driver WHERE driver_id=@id;
END;

CREATE PROCEDURE select_employee @id int AS
BEGIN
	SELECT * FROM Driver WHERE driver_id=@id;
END;

CREATE TABLE Driver_info
		(driver_info_id INT NOT NULL PRIMARY KEY,
		birthday datetime,
		salary numeric(7,2),
		phone_number varchar(15));

INSERT INTO Driver_info VALUES
		(1, '1980-01-05', 3000, '123123456');
INSERT INTO Driver_info VALUES
		(2, '1986-11-25', 3000, '123123456');
INSERT INTO Driver_info VALUES
		(3, '1981-05-14', 3000, '123123456');
INSERT INTO Driver_info VALUES
		(4, '1980-12-12', 3000, '123123456');
INSERT INTO Driver_info VALUES
		(5, '1975-07-16', 3000, '123123456');
INSERT INTO Driver_info VALUES
		(6, '1963-01-01', 3000, '123123456');
INSERT INTO Driver_info VALUES
		(7, '1982-03-09', 3000, '123123456');

CREATE PROCEDURE add_employee_long @id int, @name varchar(20), @surname varchar(20), @birthday datetime, @salary numeric(7,2), @phone varchar(15) AS
BEGIN
	INSERT INTO Driver VALUES (@id, @name, @surname);
	INSERT INTO Driver_info VALUES (@id, @birthday, @salary, @phone);
END;

CREATE PROCEDURE edit_employee_long @id int, @name varchar(20), @surname varchar(20), @birthday datetime, @salary numeric(7,2), @phone varchar(15) AS
BEGIN
	UPDATE Driver SET driver_id=@id, name=@name, surname=@surname WHERE driver_id=@id;
	UPDATE Driver_info SET driver_info_id=@id, birthday=@birthday, salary=@salary, phone_number=@phone WHERE driver_info_id=@id;
END;

CREATE PROCEDURE delete_employee_long @id int AS
BEGIN
	DELETE FROM Driver_info WHERE driver_info_id=@id;
	DELETE FROM Driver WHERE driver_id=@id;
END;

DROP procedure select_employee_long;
CREATE PROCEDURE select_employee_long @id int AS
BEGIN
	SELECT driver_id, name, surname, birthday, salary, phone_number FROM Driver, Driver_info WHERE driver_id=@id AND driver_info_id=driver_id;
END;
DROP PROCEDURE select_employees;
CREATE PROCEDURE select_employees AS
BEGIN
	select driver_id, name, surname, birthday, salary, phone_number FROM Driver, Driver_info WHERE driver_info_id=driver_id;
END;
execute select_employees;

CREATE TABLE Journey
		(journey_id INT NOT NULL PRIMARY KEY,
		driver INT REFERENCES Driver,
		customer INT REFERENCES Customer,
		address varchar(20),
		date datetime,
		cost numeric(7,2));
DROP PROCEDURE select_journey;
CREATE PROCEDURE select_journey AS
BEGIN
	SELECT journey_id, driver_id, Driver.surname, customer_id, Customer.surname, Journey.address, date, cost FROM Journey, Driver, Customer WHERE driver=driver_id and customer=customer_id;
END;

execute select_journey;

INSERT INTO Journey VALUES
		(1, 2, 3, 'WALENICKA 5', '2015-05-22', 100);
INSERT INTO Journey VALUES
		(2, 4, 2, 'ZAMIENIECKA 13', '2015-04-30', 150);
INSERT INTO Journey VALUES
		(3, 5, 4, 'PRZYBORSKA 19', '2015-05-02', 30);
INSERT INTO Journey VALUES
		(4, 2, 6, 'MALANECKA 8', '2015-05-11', 60);
INSERT INTO Journey VALUES
		(5, 7, 7, 'GRUZOWSKA 54', '2015-05-15', 40);

CREATE TABLE Users 
		(user_id int NOT NULL PRIMARY KEY,
		username varchar(10) NOT NULL,
		password varchar(10) NOT NULL);

INSERT INTO Users VALUES
		(1, 'admin', 'admin');
