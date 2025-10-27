INSERT INTO public.obiekty (name, geometry)
SELECT 'obiekt7', ST_Union(ob3.geometry, ob4.geometry)
FROM public.obiekty as ob3, public.obiekty as ob4
WHERE ob3.id = 3 AND ob4.id = 4;