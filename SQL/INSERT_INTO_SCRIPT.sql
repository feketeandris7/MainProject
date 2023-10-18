INSERT INTO [user] (username, email, active, crd, cru, lmd, lmu) VALUES ('adminjohny', 'admin@johny.com', 1, GETDATE(), 1, GETDATE(), 1);

INSERT INTO [role] (name, active, crd, cru, lmd, lmu) VALUES ('admin', 1, GETDATE(), 1, GETDATE(), 1);

INSERT INTO user_role (user_id, role_id, active, crd, cru, lmd, lmu) VALUES (1, 1, 1, GETDATE(), 1, GETDATE(), 1);

INSERT INTO [transmission] (type, active, crd, cru, lmd, lmu)
VALUES 
('Automatic', 1, GETDATE(), 1, GETDATE(), 1),
('Manual', 1, GETDATE(), 1, GETDATE(), 1),
('CVT', 1, GETDATE(), 1, GETDATE(), 1),
('Semi-Automatic', 1, GETDATE(), 1, GETDATE(), 1),
('Automated Manual', 1, GETDATE(), 1, GETDATE(), 1),
('Dual-Clutch', 1, GETDATE(), 1, GETDATE(), 1),
('Tiptronic', 1, GETDATE(), 1, GETDATE(), 1),
('DSG', 1, GETDATE(), 1, GETDATE(), 1),
('Xtronic CVT', 1, GETDATE(), 1, GETDATE(), 1),
('Sequential Manual', 1, GETDATE(), 1, GETDATE(), 1),
('Automated Clutch Manual', 1, GETDATE(), 1, GETDATE(), 1),
('Hydramatic', 1, GETDATE(), 1, GETDATE(), 1),
('Autostick', 1, GETDATE(), 1, GETDATE(), 1),
('PDK', 1, GETDATE(), 1, GETDATE(), 1),
('Electronic Continuously Variable Transmission (E-CVT)', 1, GETDATE(), 1, GETDATE(), 1);

INSERT INTO engine (type, power, active, crd, cru, lmd, lmu)
VALUES 
('V4', 150, 1, GETDATE(), 1, GETDATE(), 1),
('V6', 200, 1, GETDATE(), 1, GETDATE(), 1),
('V8', 300, 1, GETDATE(), 1, GETDATE(), 1),
('Inline-4', 140, 1, GETDATE(), 1, GETDATE(), 1),
('Inline-6', 280, 1, GETDATE(), 1, GETDATE(), 1),
('V12', 350, 1, GETDATE(), 1, GETDATE(), 1),
('Flat-4', 160, 1, GETDATE(), 1, GETDATE(), 1),
('V6 Turbo', 220, 1, GETDATE(), 1, GETDATE(), 1),
('V8 Twin Turbo', 320, 1, GETDATE(), 1, GETDATE(), 1),
('V4 Hybrid', 130, 1, GETDATE(), 1, GETDATE(), 1),
('V6 Hybrid', 250, 1, GETDATE(), 1, GETDATE(), 1),
('V8 Hybrid', 380, 1, GETDATE(), 1, GETDATE(), 1),
('Flat-6', 200, 1, GETDATE(), 1, GETDATE(), 1),
('V6 Diesel', 200, 1, GETDATE(), 1, GETDATE(), 1),
('Inline-4 Diesel', 180, 1, GETDATE(), 1, GETDATE(), 1);

INSERT INTO rim (size, active, crd, cru, lmd, lmu)
VALUES 
('15 inches', 1, GETDATE(), 1, GETDATE(), 1),
('16 inches', 1, GETDATE(), 1, GETDATE(), 1),
('17 inches', 1, GETDATE(), 1, GETDATE(), 1),
('18 inches', 1, GETDATE(), 1, GETDATE(), 1),
('19 inches', 1, GETDATE(), 1, GETDATE(), 1),
('20 inches', 1, GETDATE(), 1, GETDATE(), 1),
('21 inches', 1, GETDATE(), 1, GETDATE(), 1),
('22 inches', 1, GETDATE(), 1, GETDATE(), 1),
('23 inches', 1, GETDATE(), 1, GETDATE(), 1),
('24 inches', 1, GETDATE(), 1, GETDATE(), 1),
('25 inches', 1, GETDATE(), 1, GETDATE(), 1),

INSERT INTO make (type, active, crd, cru, lmd, lmu)
VALUES 
('Toyota', 1, GETDATE(), 1, GETDATE(), 1),
('Honda', 1, GETDATE(), 1, GETDATE(), 1),
('Ford', 1, GETDATE(), 1, GETDATE(), 1),
('Chevrolet', 1, GETDATE(), 1, GETDATE(), 1),
('BMW', 1, GETDATE(), 1, GETDATE(), 1),
('Mercedes-Benz', 1, GETDATE(), 1, GETDATE(), 1),
('Audi', 1, GETDATE(), 1, GETDATE(), 1),
('Nissan', 1, GETDATE(), 1, GETDATE(), 1),
('Hyundai', 1, GETDATE(), 1, GETDATE(), 1),
('Kia', 1, GETDATE(), 1, GETDATE(), 1),
('Mazda', 1, GETDATE(), 1, GETDATE(), 1),
('Volkswagen', 1, GETDATE(), 1, GETDATE(), 1),
('Subaru', 1, GETDATE(), 1, GETDATE(), 1),
('Chrysler', 1, GETDATE(), 1, GETDATE(), 1),
('Jeep', 1, GETDATE(), 1, GETDATE(), 1),
('Dodge', 1, GETDATE(), 1, GETDATE(), 1),
('Volvo', 1, GETDATE(), 1, GETDATE(), 1),
('Lexus', 1, GETDATE(), 1, GETDATE(), 1),
('Infiniti', 1, GETDATE(), 1, GETDATE(), 1);
('Opel', 1, GETDATE(), 1, GETDATE(), 1);

INSERT INTO model (type, active, crd, cru, lmd, lmu, make_id) VALUES
('335i', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'BMW')),
('320d', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'BMW')),
('520i', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'BMW')),
('M3', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'BMW')),
('X6M50i', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'BMW')),
('G55', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'Mercedes-Benz')),
('C220', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'Mercedes-Benz')),
('CLA63', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'Mercedes-Benz')),
('B200', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'Mercedes-Benz')),
('A180', 1, GETDATE(), 1, GETDATE(), 1, (SELECT id FROM make WHERE type = 'Mercedes-Benz')),
