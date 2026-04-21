-- Membuat tabel transaksi penjualan
CREATE TABLE IF NOT EXISTS tr_penjualan (
    kode_urut_transaksi  INT PRIMARY KEY,
    kode_transaksi       VARCHAR(20),
    kode_pelanggan       VARCHAR(20),
    tgl_transaksi        DATETIME,
    no_urut              INT,
    kode_produk          VARCHAR(20),
    nama_produk          VARCHAR(100),
    qty                  INT,
    harga                DECIMAL(10,2),
    diskon_persen        DECIMAL(5,2)
);

-- Insert Data
INSERT INTO tr_penjualan VALUES
(1,  'tr-001', 'dqlabcust07', '2020-05-01', 1, 'prod-01', 'Kotak Pensil DQLab',              5, 62500.00,  0.0),
(2,  'tr-001', 'dqlabcust07', '2020-05-01', 2, 'prod-03', 'Flash disk DQLab 32 GB',          1,100000.00, 25.0),
(3,  'tr-001', 'dqlabcust07', '2020-05-01', 3, 'prod-09', 'Buku Planner Agenda DQSQuad',     3, 92000.00,  0.0),
(4,  'tr-001', 'dqlabcust07', '2020-05-01', 4, 'prod-04', 'Flashdisk DQLab 32 GB',           3, 40000.00,  0.0),
(5,  'tr-002', 'dqlabcust00', '2020-05-01', 1, 'prod-03', 'Gift Voucher DQLab 100rb',        2,100000.00,  0.0),
(6,  'tr-002', 'dqlabcust00', '2020-05-01', 2, 'prod-10', 'Sticky Notes DQLab 500 sheets',   4, 55000.00,  0.0),
(7,  'tr-002', 'dqlabcust00', '2020-05-01', 3, 'prod-07', 'Tas Travel Organizer DQLab',      1, 48000.00,  0.0),
(8,  'tr-003', 'dqlabcust03', '2020-05-03', 1, 'prod-02', 'Flashdisk DQLab 64 GB',           2, 55000.00, 12.5),
(9,  'tr-004', 'dqlabcust03', '2020-05-03', 1, 'prod-10', 'Sticky Notes DQLab 500 sheets',   5, 55000.00,  0.0),
(10, 'tr-004', 'dqlabcust03', '2020-05-03', 2, 'prod-04', 'Flashdisk DQLab 32 GB',           4, 40000.00,  0.0),
(11, 'tr-005', 'dqlabcust00', '2020-06-12', 1, 'prod-09', 'Buku Planner Agenda DQSQuad',     3, 92000.00,  0.0),
(12, 'tr-005', 'dqlabcust00', '2020-06-12', 2, 'prod-01', 'Kotak Pensil DQLab',              1, 62500.00,  5.0),
(13, 'tr-005', 'dqlabcust00', '2020-06-12', 3, 'prod-04', 'Flashdisk DQLab 32 GB',           2, 40000.00,  0.0),
(14, 'tr-006', 'dqlabcust02', '2020-06-19', 1, 'prod-05', 'Gift Voucher DQLab 250rb',        4,250000.00,  0.0),
(15, 'tr-006', 'dqlabcust02', '2020-06-19', 2, 'prod-08', 'Gantungan Kunci DQLab',           2, 15800.00,  0.0);

-- Cek Data
SELECT * FROM tr_penjualan;