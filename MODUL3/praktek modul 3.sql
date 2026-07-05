CREATE DATABASE IF NOT EXISTS dqlab_sql;
USE dqlab_sql;

-- Tabel diasumsikan sudah memiliki kolom berikut
-- id, nama_produk, qty, harga, diskon, tgl_transaksi

-- Praktek 1
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty;

-- Praktek 2
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty, nama_produk;

-- Praktek 3
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC;

-- Praktek 4
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC, nama_produk ASC;

-- Praktek 5
SELECT nama_produk, qty, harga, qty*harga AS total
FROM tr_penjualan_dqlab
ORDER BY harga*qty DESC;

-- Praktek 6
SELECT nama_produk, qty
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'F%'
ORDER BY qty DESC;

-- Praktek 7
SELECT SUM(qty) FROM tr_penjualan_dqlab;

-- Praktek 8
SELECT COUNT(*) FROM tr_penjualan_dqlab;

-- Praktek 9
SELECT SUM(qty), COUNT(*) FROM tr_penjualan_dqlab;

-- Praktek 10
SELECT AVG(qty), MAX(qty), MIN(qty) FROM tr_penjualan_dqlab;

-- Praktek 11
SELECT COUNT(DISTINCT nama_produk) FROM tr_penjualan_dqlab;

-- Praktek 12
SELECT COUNT(*), COUNT(DISTINCT nama_produk) FROM tr_penjualan_dqlab;

-- Praktek 13
SELECT nama_produk, MAX(qty) FROM tr_penjualan_dqlab;

-- Praktek 14
SELECT nama_produk FROM tr_penjualan_dqlab
GROUP BY nama_produk;

-- Praktek 15
SELECT nama_produk, qty FROM tr_penjualan_dqlab
GROUP BY nama_produk, qty;

-- Praktek 16
SELECT nama_produk, SUM(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk;
