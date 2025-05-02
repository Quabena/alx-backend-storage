-- 3-glam_rock.sql
-- List all bands with Glam rock as their main style, ranked by longevity

SELECT
    name AS band_name,
    (IFNULL(split, 2022) - formed) AS lifespan
FROM
    metal_bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;
