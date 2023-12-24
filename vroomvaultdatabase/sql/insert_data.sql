USE vroomvault;

-- inserting country data

INSERT INTO countries (country) VALUES
  ('South Korea'), 
  ('Japan'), 
  ('Italy'), 
  ('United Kingdom'), 
  ('France'), 
  ('Germany');

-- inserting brand data

INSERT INTO brands (brand, country_id) VALUES
  ('Hyundai', 1), -- from South Korea
  ('Toyota', 2), -- from Japan
  ('Fiat', 3), -- from Italy
  ('Rolls-Royce', 4), -- from United Kingdom
  ('Renault', 5), -- from France
  ('Audi', 6), -- from Germany
  ('Mitsubishi', 2), -- from Japan
  ('Kia', 1); -- from South Korea

-- inserting transmission data

INSERT INTO transmission(transmission_type) VALUES
  ('Automatic'),
  ('Manual');

-- inserting inventory data

INSERT INTO inventory (model, transmission_id, fuel_type, brand_id) VALUES
('Sonata', 1, 'Gasoline', 1), -- Automatic Hyundai Sonata
('Camry', 1, 'Gasoline', 2), -- Automatic Toyota Camry
('500', 2, 'Gasoline', 3), -- Manual Fiat 500
('Phantom', 1, 'Gasoline', 4), -- Automatic Rolls-Royce Phantom
('Clio', 2, 'Gasoline', 5), -- Manual Renault Clio
('A4', 1, 'Gasoline', 6), -- Automatic Audi A4
('Outlander', 1, 'Hybrid', 2), -- Automatic Mitsubishi Outlander
('Sportage', 1, 'Electric', 1); -- Automatic Kia Sportage

-- inserting customer data

INSERT INTO customers (first_name, last_name, address) VALUES
('Eric', 'Clapton', '11703 Caliangt Place'),
('Blaire', 'Gallgher', '3 Ridge Oak Crossing'),
('Harry', 'Potter', 'The Cupboard under the Stairs, 4 Privet Drive'),
('Hermione', 'Granger', '2796 Briar Crest Street'),
('Ron', 'Weasley', '50 Scoville Circle'),
('Jungkook', 'Jeon', '3 Dapin Pass'),
('Jake', 'Shim', '28 David Park'),
('Heeseung', 'Lee', '6475 Sachs Center'),
('Taehyung', 'Kim', '0 Almo Court');

-- inserting rental data

INSERT INTO rentals (rental_date, customer_id, inventory_id) VALUES
('2023-12-20', 1, 1),   -- Eric Clapton rented a Hyundai Sonata
('2023-12-21', 2, 2),   -- Blaire Gallagher rented a Toyota Camry
('2023-12-22', 3, 3),   -- Harry Potter rented a Fiat 500
('2023-12-23', 4, 4),   -- Hermione Granger rented a Rolls-Royce Phantom
('2023-12-24', 5, 5),   -- Ron Weasley rented a Renault Clio
('2023-12-25', 6, 6),   -- Jungkook Jeon rented an Audi A4
('2023-12-26', 7, 7),   -- Jake Shim rented a Mitsubishi Outlander
('2023-12-27', 8, 8),   -- Heeseung Lee rented a Kia Sportage
('2023-12-28', 9, 1),   -- Taehyung Kim rented a Hyundai Sonata
('2023-12-29', 1, 2),   -- Eric Clapton rented a Toyota Camry
('2023-12-30', 2, 3),   -- Blaire Gallagher rented a Fiat 500
('2023-12-31', 3, 4),   -- Harry Potter rented a Rolls-Royce Phantom
('2024-01-01', 4, 5),   -- Hermione Granger rented a Renault Clio
('2024-01-02', 5, 6),   -- Ron Weasley rented an Audi A4
('2024-01-03', 6, 7),   -- Jungkook Jeon rented a Mitsubishi Outlander
('2024-01-04', 7, 8),   -- Jake Shim rented a Kia Sportage
('2024-01-05', 8, 1),   -- Heeseung Lee rented a Hyundai Sonata
('2024-01-06', 9, 2),   -- Taehyung Kim rented a Toyota Camry
('2024-01-25', 8, 2),   -- Heeseung Lee rented a Toyota Camry
('2024-01-27', 8, 1),   -- Heeseung Lee rented a Hyundai Sonata
('2024-01-30', 7, 7),   -- Jake Shim rented a Mitsubishi Outlander
('2024-03-27', 8, 8),   -- Heeseung Lee rented a Kia Sportage
('2023-03-31', 3, 4);   -- Harry Potter rented a Rolls-Royce Phantom
