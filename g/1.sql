CREATE TABLE [log_thue_phong]
(
    [ma_phong] int NOT NULL,
    [ma_khach_hang] int NOT NULL,
    [ngay_thue] date NOT NULL,
    [hinh_thuc_thue] int NOT NULL,
    [so_gio_thue] int NOT NULL,
    FOREIGN KEY ([ma_khach_hang]) REFERENCES [khach_hang]([ma]),
    FOREIGN KEY ([ma_phong]) REFERENCES [phong]([ma])
)