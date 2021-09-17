SELECT COUNT(DISTINCT [khach_hang].[ma]) AS 'tong so khach hang'
FROM ([khach_hang] JOIN ([phong] JOIN [loai_phong]
    ON [phong].[ma_loai_phong] = [loai_phong].[ma])
    ON [khach_hang].[ma] = [phong].[ma_khach_hang])
WHERE [trong] = 0 AND [ten_loai] = 'thuong'
