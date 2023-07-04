create table customer (
	customer_id SERIAL primary key,
	full_name VARCHAR(150),
	address VARCHAR,
	phone_num VARCHAR(150)
);

create table sales_staff (
	salesperson_id SERIAL primary key,
	full_name varchar(150)
);

create table service_staff (
	service_staff_id SERIAL primary key,
	full_name VARCHAR
);

create table car (
	car_id SERIAL primary key,
	make varchar,
	model varchar,
	_year integer
);

create table invoice (
	invoice_id SERIAL primary key,
	customer_id INTEGER not null,
	car_id INTEGER not null,
	salesperson_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(car_id) references car(car_id),
	foreign key(salesperson_id) references sales_staff(salesperson_id)
);
	
create table service_ticket (
	service_ticket_id SERIAL primary key,
	service_description varchar,
	service_date date default current_date,
	service_cost DECIMAL(10,2),
	service_staff_id INTEGER not null,
	car_id INTEGER not null,
	foreign key(service_staff_id) references service_staff(service_staff_id),
	foreign key(car_id) references car(car_id)
);