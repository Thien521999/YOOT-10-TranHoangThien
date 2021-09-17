SELECT [so_phong], [gia_thue], [ten_loai]
FROM ([phong] JOIN [loai_phong] ON [phong].[ma_loai_phong] = [loai_phong].[ma])
WHERE [gia_thue] >= 500000 AND [ten_loai] = 'VIP'