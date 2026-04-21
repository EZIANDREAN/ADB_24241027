-- Nama : Ezi andrean
-- NIM : 24241027
-- KELAS : A


SHOW DATABASES;

-- membuat database
CREATE DATABASE pti_mart;

-- memunculkan database
SHOW databases;
 
 -- menggunakan database
USE pti_mart;

-- membuat table pelanggan
CREATE TABLE pelanggan (
kode_pelanggan varchar(20) PRIMARY KEY,
no_urut int NOT NULL,
nama_pelanggan varchar(30),
alamat varchar(50)
);

-- mengisi table pelanggan
INSERT INTO pelanggan (
kode_pelanggan,
no_urut,
nama_pelanggan) VALUES (
"dqlabcust", 0, "pelanggan Non Member");

-- CEK HASIL INSERT 
 SELECT * FROM pelanggan;
 
 -- Mengisi multiple input ke table pelanggan
 INSERT INTO pelanggan (
 kode_pelanggan,
 no_urut,
 nama_pelanggan,
 alamat) VALUES 
('dqlabcust01', 1,  'Eva Novianti, S.H.',   'Vila Sempilan, No. 67 - Kota B'),
('dqlabcust02', 2,  'Heidi Goh',            'Vila Sempilan, No. 11 - Kota B'),
('dqlabcust03', 3,  'Unang Handoko',         'Vila Sempilan, No. 1 - Kota B'),
('dqlabcust04', 4,  'Jokolono Sukarman',     'Vila Permata Intan Berkilau, Blok C5-7'),
('dqlabcust05', 5,  'Tommy Sinaga',          'Vila Permata Intan Berkilau, Blok A1/2'),
('dqlabcust06', 6,  'Irwan Setianto',        'Vila Gunung Seribu, Blok O1 - No. 1 - Kota C'),
('dqlabcust07', 7,  'Agus Cahyono',          'Vila Gunung Seribu, Blok F4 - No. 8'),
('dqlabcust08', 8,  'Maria Sirait',          'Vila Bukit Sagitarius, Gang. Sawit No. 3'),
('dqlabcust09', 9,  'Ir. Ita Nugraha',       'Vila Bukit Sagitarius, Gang Kelapa No. 6'),
('dqlabcust10', 10, 'Djoko Wardoyo, Drs.',   'Vila Bukit Sagitarius, Blok A1 No. 1');
 
