USE vroomvault;

INSERT INTO countries (country) VALUES
  ('South Korea'), 
  ('Japan'), 
  ('Italy'), 
  ('United Kingdom'), 
  ('France'), 
  ('Germany');

INSERT INTO brands (brand, country_id) VALUES
  ('Hyundai', 1), 
  ('Toyota', 2), 
  ('Fiat', 3), 
  ('Rolls-Royce', 4), 
  ('Renault', 5), 
  ('Audi', 6), 
  ('Mitsubishi', 2), 
  ('Kia', 1);

INSERT INTO inventory(model, transmission, fuel_type, brand_id)
