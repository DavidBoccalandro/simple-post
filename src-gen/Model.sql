CREATE TABLE User(
	id integer,
	username VARCHAR(255),
	password VARCHAR(255),
	name VARCHAR(255),
	email varchar(255),
	type VARCHAR(255),
	PRIMARY KEY (id)
);
CREATE TABLE Company(
	id integer,
	tax_id varchar(255),
	name varchar(255),
	address varchar(255),
	phone varchar(255),
	email varchar(255),
	logo_image varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE Customer(
	id integer,
	code varchar(255),
	name varchar(255),
	address varchar(255),
	phone varchar(255),
	email varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE Supplier(
	id integer,
	name varchar(255),
	address varchar(255),
	phone varchar(255),
	email varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE Product(
	id integer,
	code varchar(255),
	name varchar(255),
	detail varchar(255),
	stock integer,
	discount float,
	PRIMARY KEY (id)
);
CREATE TABLE Unit(
	id integer,
	detail varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE Category(
	id integer,
	name varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE Sale(
	id integer,
	quantity integer,
	price float,
	subtotal float,
	PRIMARY KEY (id)
);
CREATE TABLE Invoice(
	id integer,
	date_time date_time,
	subtotal float,
	tax float,
	total float,
	payment_type varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE Order(
	id integer,
	date_time date_time,
	subtotal float,
	tax float,
	total float,
	payment_type varchar(255),
	PRIMARY KEY (id)
);
CREATE TABLE Purchase(
	id integer,
	quantity integer,
	price float,
	subtotal float,
	PRIMARY KEY (id)
);
CREATE TABLE Has(
	id integer references Company(id),
	id integer references User(id),
	PRIMARY KEY (id, id)
);
CREATE TABLE Belongs(
	id integer references Category(id),
	id integer references Product(id),
	PRIMARY KEY (id, id)
);
CREATE TABLE Has1(
	id integer references Unit(id),
	id integer references Product(id),
	PRIMARY KEY (id, id)
);
CREATE TABLE Has2(
	id integer references Sale(id),
	id integer references Product(id),
	PRIMARY KEY (id, id)
);
CREATE TABLE Has3(
	id integer references Sale(id),
	id integer references Invoice(id),
	PRIMARY KEY (id, id)
);
CREATE TABLE Has4(
	id integer references Invoice(id),
	id integer references Customer(id),
	PRIMARY KEY (id, id)
);
CREATE TABLE Creates(
	id integer references Invoice(id),
	id integer references User(id),
	PRIMARY KEY (id, id)
);
