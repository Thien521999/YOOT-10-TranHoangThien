SELECT [ten], [dien_thoai]
FROM ([khach_hang] JOIN [phong] ON [khach_hang].[ma] = [phong].[ma_khach_hang])
WHERE [gia_thue] >= 200000 AND [trong] = 0 