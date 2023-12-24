CREATE DATABASE vroomvault

USE vroomvault;

CREATE TABLE countries (
    country_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    country VARCHAR(50) NOT NULL,
    PRIMARY KEY (country_id)
);

CREATE TABLE brands (
    brand_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    brand VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    PRIMARY KEY (brand_id),
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

CREATE TABLE transmission(
    transmission_id INT NOT NULL AUTO_INCREMENT,
    transmission_type VARCHAR(9) NOT NULL,
    PRIMARY KEY (transmission_id),
);

CREATE TABLE inventory (
    inventory_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    model VARCHAR(255) NOT NULL,
    transmission_id INT NOT NULL,
    fuel_type VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    PRIMARY KEY (inventory_id),
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id),
    FOREIGN KEY (transmission_id) REFERENCES transmission(transmission_id)
);

CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(500) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE rentals (
    rental_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    rental_date DATE NOT NULL,
    customer_id INT NOT NULL,
    inventory_id INT NOT NULL,
    PRIMARY KEY (rental_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);
