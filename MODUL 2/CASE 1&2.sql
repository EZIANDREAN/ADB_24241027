-- Nama : Ezi Andrean
-- Nim : 24241027
-- Kelas : A 
-- Modul 2

-- CASE 1
SELECT nama_pelanggan from pelanggan as pl;
SELECT nama_pelanggan as np from pelanggan;
SELECT alamat as tp from pelanggan;

SELECT pl.nama_pelanggan as np, alamat as tp FROM pelanggan as pl;

-- CASE 2
SELECT nama_produk from produk as pr;
SELECT nama_produk as np from produk;
SELECT harga as RP from produk;

SELECT pr.nama_produk as np, harga as RP FROM produk as pr;
