WITH obiekt3 AS (
	SELECT geometry
	FROM public.obiekty
	WHERE id = 3
), obiekt4 AS (
	SELECT geometry
	FROM public.obiekty
	WHERE id = 4
)

SELECT ST_Area(ST_Buffer(ST_ShortestLine(ob3.geometry, ob4.geometry), 5))
FROM obiekt3 as ob3, obiekt4 as ob4