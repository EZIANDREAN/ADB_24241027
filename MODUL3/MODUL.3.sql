-- Nama : Ezi Andrean
-- NIM : 24241027
-- kelas : A 

-- Nilai literal, Operator Matematika, perbandinngan logika
-- fungsi matematika, dan tanggal (date)
-- klausal where, like

-- Praktek 1
SELECT 77;

-- menggunakan select untuk menampilkan nilai literal dengan tipe data yang berbeda
-- praktek 2
SELECT 77 as angka, false AS nilai_logika, 'PTI' As teks;

-- null
-- berarti tidak memiliki nilai ataupun kosong
-- praktek 3
-- menggunakan select untuk menampilkan null
SELECT NULL as kosong;

-- Operator matematika
-- praktek 4
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi, 5 DIV 2 AS hasil_bagi_2;

-- latihan mandiri
SELECT 4*2 AS 4_dikali_2, 32%7 As hasil_bagi, 32 MOD 7 AS hasil_bagi_2;

-- praktek 5
-- menggunakan database
USE pti_mart;

-- opertator matematika untuk dua kolom dalam table penjualan
-- ambil data hasil perkalian kolom qty dengan kolom harga dan menyimpan didalam tabel baru AS total_beli
-- praktek 6
SELECT qty*harga AS total_beli FROM tr_penjualan;

-- operator perkalian
-- simbol untuk membandingkan nilai dari nilai literal ataupun hasil ekspresi matematika
SELECT 5=5, 5!=5, 5!=4;

-- select 7
SELECT 1=true, 1=false, 5>=5, 5.2=5.20000, NULL=1, NULL=NULL;

-- fungsi
-- proses yang memilliki nama bukan simbol seperti operator
-- praktek 8
SELECT POW(5,2), ROUND(3,14), ROUND(3,54), ROUND(3.155, 1), ROUND(3.155, 2),
FLOOR(4.28), FLOOR(4.78), CEILING(4.39), CEILING(4.55);

-- praktek 9
SELECT NOW(), YEAR('2026-5-11'),
ROUNDDATEDIFF(NOW(), '2025-5-11' /30), 
DAY('2026-5-11');

-- LATIHAN MANDIRI
SELECT DATEDIFF('2022-7-23', NOW()),
YEAR('2022-7-23'),
MONTH('2022-7-23'),
DAY('2022-7-23'),
YEAR(NOW());