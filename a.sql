CREATE DATABASE [Test_database];

CREATE TABLE [khach_hang]
(
    [ma] int NOT NULL,
    [ten] varchar(255) NOT NULL,
    [dien_thoai] varchar(15) NOT NULL,
    [nam_sinh] int NOT NULL,
    PRIMARY KEY ([ma])
);

CREATE TABLE [loai_phong]
(
    [ma] int NOT NULL,
    [ten_loai] varchar(255) NOT NULL,
    PRIMARY KEY ([ma])
);

CREATE TABLE [phong]
(
    [ma] int NOT NULL,
    [so_phong] varchar(255) NOT NULL,
    [gia_thue] decimal(12,2) NOT NULL,
    [trong] int NOT NULL,
    [ma_khach_hang] int,
    [ma_loai_phong] int NOT NULL,
    PRIMARY KEY ([ma]),
    FOREIGN KEY ([ma_khach_hang]) REFERENCES [khach_hang]([ma]),
    FOREIGN KEY ([ma_loai_phong]) REFERENCES [loai_phong]([ma])
);