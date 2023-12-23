CREATE DATABASE vroomvault

USE vroomvault;

CREATE TABLE brands(
	brand_id INT NOT NULL AUTO_INCREMENT,
    brand VARCHAR(100) NOT NULL,
    PRIMARY KEY (brand_id)
    );
