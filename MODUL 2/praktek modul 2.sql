-- Praktek 1
SELECT 77 AS angka;

-- Praktek 2
SELECT 77 AS angka, TRUE AS nilai_logika, 'DQLab' AS teks;

-- Praktek 3
SELECT NULL AS kosong;

-- Praktek 4
SELECT 5%2 AS sisa_bagi,5/2 AS hasil_bagi_1,5 DIV 2 AS hasil_bagi_2;

-- Praktek 5
SELECT qty*harga AS total_beli FROM tr_penjualan_dqlab;

-- Praktek 6
SELECT 5=5,5<>5,5<>4,5!=5,5!=4,5>4;

-- Praktek 7
SELECT qty>harga FROM tr_penjualan_dqlab; -- sesuaikan jika modul salah

-- Praktek 8
SELECT POW(3,2),ROUND(3.14),ROUND(3.54),ROUND(3.155,1),ROUND(3.155,2),FLOOR(4.28),FLOOR(4.78),CEILING(4.39),CEILING(4.55);

-- Praktek 9
SELECT NOW(),YEAR('2022-05-03'),DATEDIFF('2022-07-22','2022-05-03'),DAY('2022-05-03');

