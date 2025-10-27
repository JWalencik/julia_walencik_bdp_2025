UPDATE public.obiekty
SET geometry = ST_AddPoint(geometry, ST_StartPoint(geometry))
WHERE id=4 AND NOT ST_IsClosed(geometry);

SELECT ST_IsClosed(geometry) AS czy_zamknieta, ST_IsValid(geometry) AS czy_poprawna
FROM public.obiekty
WHERE id=4;

UPDATE public.obiekty
SET geometry = ST_MakePolygon(geometry)
WHERE id=4;

SELECT ST_GeometryType(geometry), geometry FROM public.obiekty
WHERE id=4