SELECT [ten], [dien_thoai], [nam_sinh]
FROM [khach_hang]
WHERE [khach_hang].[ma] NOT IN 
						( SELECT [khach_hang].[ma]
    FROM ([khach_hang] JOIN [phong]
        ON [khach_hang].[ma] = [phong].[ma_khach_hang])
    WHERE [trong] = 0 )
    AND [nam_sinh] > 1994
