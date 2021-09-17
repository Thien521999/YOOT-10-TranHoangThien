SELECT Top(1)
    [so_phong], [khach_hang].[ten]
FROM ([khach_hang] JOIN [phong] ON [khach_hang].[ma] = [phong].[ma_khach_hang])
WHERE [trong] = 0
ORDER BY [gia_thue] DESC