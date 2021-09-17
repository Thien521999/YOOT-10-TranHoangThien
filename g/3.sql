SELECT CAST(x.[tong so khach hang thue phong ho nguyen] AS FLOAT) 
			/ CAST(y.[tong so khach hang thue phong] AS FLOAT) AS [ti le]
FROM
    ( 
	SELECT COUNT(DISTINCT kh.[ma]) AS 'tong so khach hang thue phong ho nguyen'
    FROM [log_thue_phong] AS ltp JOIN [khach_hang] AS kh ON ltp.[ma_khach_hang] = kh.[ma]
    WHERE kh.[ten] LIKE 'Nguyen%' AND ltp.[ngay_thue] BETWEEN '2021-01-01' AND '2021-03-31'
) AS x
    JOIN
    (
	SELECT COUNT(DISTINCT kh.[ma]) AS 'tong so khach hang thue phong'
    FROM [log_thue_phong] AS ltp JOIN [khach_hang] AS kh ON ltp.[ma_khach_hang] = kh.[ma]
    WHERE ltp.[ngay_thue] BETWEEN '2021-01-01' AND '2021-03-31'
) AS y ON 1=1