-- Membuat tabel produk
CREATE TABLE IF NOT EXISTS ms_produk (
    kode_produk      VARCHAR(20) PRIMARY KEY,
    no_urut          INT,
    kategori_produk  VARCHAR(50),
    nama_produk      VARCHAR(100),
    harga            DECIMAL(10,2)
);

-- Insert Data
INSERT INTO ms_produk VALUES
('prod-01', 1,  'Alat Tulis Kantor',   'Kotak Pensil DQLab',                    62500.00),
('prod-02', 2,  'Aksesoris Komputer',  'Flashdisk DQLab 64 GB',                 55000.00),
('prod-03', 3,  'Gift & Voucher',      'Gift Voucher DQLab 100rb',             100000.00),
('prod-04', 4,  'Aksesoris Komputer',  'Flashdisk DQLab 32 GB',                 40000.00),
('prod-05', 5,  'Gift & Voucher',      'Gift Voucher DQLab 250rb',             250000.00),
('prod-06', 6,  'Alat Tulis Kantor',   'Pulpen Multifunction + Laser DQLab',    92500.00),
('prod-07', 7,  'Gift & Voucher',      'Tas Travel Organizer DigiSkills.id',    48000.00),
('prod-08', 8,  'Gift & Voucher',      'Gantungan Kunci DQLab',                 15800.00),
('prod-09', 9,  'Alat Tulis Kantor',   'Buku Planner Agenda DQLab',             92000.00),
('prod-10', 10, 'Alat Tulis Kantor',   'Sticky Notes DQLab 500 sheets',         55000.00);

-- Cek Data
SELECT * FROM ms_produk;