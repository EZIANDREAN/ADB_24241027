-- Nama : Ezi Andrean
-- Nim : 24241027
-- Kelas : A 
-- MODUL 4

USE pti_mart;

-- Praktek #1 JOIN
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan_dqlab tp
JOIN ms_pelanggan_dqlab mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek #2 CROSS JOIN
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan_dqlab tp
JOIN ms_pelanggan_dqlab mp
ON TRUE;

-- Praktek #3 INNER JOIN
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan_dqlab tp
INNER JOIN ms_pelanggan_dqlab mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek #4 LEFT OUTER JOIN
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan_dqlab tp
LEFT OUTER JOIN ms_pelanggan_dqlab mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek #5 RIGHT OUTER JOIN
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan_dqlab tp
RIGHT OUTER JOIN ms_pelanggan_dqlab mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktek #6 JOIN 3 TABEL
SELECT tp.kode_pelanggan,
       mp.nama_pelanggan,
       mpd.kategori_produk,
       mpd.nama_produk,
       tp.qty
FROM ms_pelanggan_dqlab mp
LEFT OUTER JOIN tr_penjualan_dqlab tp
    ON mp.kode_pelanggan = tp.kode_pelanggan
LEFT OUTER JOIN ms_produk_dqlab mpd
    ON mpd.kode_produk = tp.kode_produk;

-- Praktek #7 ORDER BY pada JOIN
SELECT tp.kode_pelanggan,
       mp.nama_pelanggan,
       mpd.kategori_produk,
       mpd.nama_produk,
       tp.qty
FROM ms_pelanggan_dqlab mp
LEFT OUTER JOIN tr_penjualan_dqlab tp
    ON mp.kode_pelanggan = tp.kode_pelanggan
LEFT OUTER JOIN ms_produk_dqlab mpd
    ON mpd.kode_produk = tp.kode_produk
ORDER BY qty DESC;

-- Praktek #8 GROUP BY pada JOIN
SELECT mpd.kategori_produk,
       mpd.nama_produk,
       SUM(tp.qty) AS qty
FROM ms_pelanggan_dqlab mp
LEFT OUTER JOIN tr_penjualan_dqlab tp
    ON mp.kode_pelanggan = tp.kode_pelanggan
LEFT OUTER JOIN ms_produk_dqlab mpd
    ON mpd.kode_produk = tp.kode_produk
GROUP BY mpd.kategori_produk, mpd.nama_produk
ORDER BY SUM(tp.qty) DESC;

-- Praktek #9 UNION
SELECT kode_produk, nama_produk
FROM ms_produk_dqlab
UNION
SELECT kode_pelanggan, nama_pelanggan
FROM ms_pelanggan_dqlab;

-- Praktek #10 UNION dengan konstanta
SELECT 'produk' AS kategori, nama_produk AS nama
FROM ms_produk_dqlab
UNION
SELECT 'pelanggan', nama_pelanggan
FROM ms_pelanggan_dqlab;

-- Praktek #11 UNION tabel sama
SELECT kode_produk, nama_produk
FROM ms_produk_dqlab
UNION
SELECT kode_produk, nama_produk
FROM ms_produk_dqlab;

-- Praktek #12 UNION tabel berbeda
SELECT nama_produk
FROM ms_produk_dqlab
UNION
SELECT nama_produk
FROM tr_penjualan_dqlab;

-- Praktek #13 UNION ALL tabel sama
SELECT kode_produk, nama_produk
FROM ms_produk_dqlab
UNION ALL
SELECT kode_produk, nama_produk
FROM ms_produk_dqlab;

-- Praktek #14 UNION ALL tabel berbeda
SELECT nama_produk
FROM ms_produk_dqlab
UNION ALL
SELECT nama_produk
FROM tr_penjualan_dqlab;

-- Contoh LIMIT
SELECT nama_produk
FROM ms_produk_dqlab
UNION ALL
SELECT nama_produk
FROM tr_penjualan_dqlab
LIMIT 1;

-- Latihan 1
SELECT mp.nama_pelanggan,
       mpd.nama_produk,
       tp.qty
FROM ms_pelanggan_dqlab mp
INNER JOIN tr_penjualan_dqlab tp
    ON mp.kode_pelanggan = tp.kode_pelanggan
INNER JOIN ms_produk_dqlab mpd
    ON tp.kode_produk = mpd.kode_produk;

-- Latihan 2
SELECT mp.nama_pelanggan,
       mpd.nama_produk,
       tp.qty
FROM ms_pelanggan_dqlab mp
LEFT JOIN tr_penjualan_dqlab tp
    ON mp.kode_pelanggan = tp.kode_pelanggan
LEFT JOIN ms_produk_dqlab mpd
    ON tp.kode_produk = mpd.kode_produk
WHERE tp.qty IS NOT NULL;

-- Latihan 3
SELECT mpd.kategori_produk,
       SUM(tp.qty) AS total_qty
FROM ms_pelanggan_dqlab mp
INNER JOIN tr_penjualan_dqlab tp
    ON mp.kode_pelanggan = tp.kode_pelanggan
INNER JOIN ms_produk_dqlab mpd
    ON tp.kode_produk = mpd.kode_produk
GROUP BY mpd.kategori_produk;

-- Latihan 4 (Self Join)
SELECT p1.kode_produk,
       p1.nama_produk,
       p2.nama_produk AS produk_pembanding
FROM ms_produk_dqlab p1
JOIN ms_produk_dqlab p2
ON p1.kode_produk = p2.kode_produk;
