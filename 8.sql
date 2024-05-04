-- employee tablosunu oluşturma
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- Mockaroo servisinden alınan 50 adet veriyi ekleme
INSERT INTO employee (name, birthday, email) VALUES
('John Doe', '1990-05-15', 'john.doe@example.com'),
('Jane Smith', '1985-08-25', 'jane.smith@example.com'),
('Michael Johnson', '1978-11-10', 'michael.johnson@example.com'),
-- 47 satır daha eklenir;

-- id 1 olan kaydı güncelleme
UPDATE employee SET name = 'John Smith' WHERE id = 1;
UPDATE employee SET birthday = '1990-05-16' WHERE id = 1;
UPDATE employee SET email = 'john.smith@example.com' WHERE id = 1;

-- id 2 olan kaydı güncelleme
UPDATE employee SET name = 'Jane Doe' WHERE id = 2;
UPDATE employee SET birthday = '1985-08-26' WHERE id = 2;
UPDATE employee SET email = 'jane.doe@example.com' WHERE id = 2;

-- id 3 olan kaydı güncelleme
-- Aynı şekilde 2 satır daha güncelleme yapılır;

-- id 1 olan kaydı silme
DELETE FROM employee WHERE id = 1;

-- id 2 olan kaydı silme
-- Aynı şekilde 4 satır daha silme yapılır;
