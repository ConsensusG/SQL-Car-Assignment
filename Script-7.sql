INSERT INTO customer (full_name, address, phone_num)
VALUES
    ('Goku', '123 Main St', '555-1234'),
    ('Vegeta', '456 Elm St', '555-5678'),
    ('Piccolo', '789 Oak St', '555-9012');

-- Populating the sales_staff table

CREATE OR REPLACE FUNCTION add_sales_staff(_salesperson_id INTEGER, _full_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO sales_staff(salesperson_id,full_name)
	VALUES(_salesperson_id, _full_name);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_sales_staff(1, 'Bulma'),
       add_sales_staff(2, 'Krillin'),
       add_sales_staff(3, 'Chi-Chi');

-- Populating the service_staff table

INSERT INTO service_staff (full_name)
VALUES
    ('Master Roshi'),
    ('Android 18'),
    ('Yamcha');

-- Populating the car table

CREATE OR REPLACE FUNCTION add_car(_make VARCHAR, _model VARCHAR, _year INTEGER)
RETURNS VOID 
AS $MAIN$
BEGIN
    INSERT INTO car (make, model, _year)
    VALUES (_make, _model, _year);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_car('Saiyan', 'Super Car', 2022),
       add_car('Namekian', 'Green Machine', 2021),
       add_car('Human', 'Speedy Racer', 2023);

-- Populating the invoice table
INSERT INTO invoice (customer_id, car_id, salesperson_id)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3);

-- Populating the service_ticket table
INSERT INTO service_ticket (service_description, service_cost, service_staff_id, car_id)
VALUES
    ('Tune-up and Power Boost', 100.00, 1, 1),
    ('Namekian Energy Recharge', 75.50, 2, 2),
    ('Human Speed Upgrade', 120.75, 3, 3);