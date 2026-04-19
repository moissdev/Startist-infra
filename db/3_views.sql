CREATE OR REPLACE VIEW vista_tarjetas AS
SELECT
    t.id_tarjeta,
    t.titulo,
    t.descripcion,
    t.estado,
    t.tecnica_id,
    tc.nombre           AS tecnica_nombre,
    tc.tecnica_padre_id
FROM tarjeta t
JOIN tecnica tc ON tc.id_tecnica = t.tecnica_id;
 
CREATE OR REPLACE VIEW vista_proyectos AS
SELECT
    p.id_proyecto,
    p.titulo            AS proyecto_titulo,
    p.archivo,
    p.descripcion       AS proyecto_descripcion,
    a.id_artista,
    a.nombre            AS artista_nombre,
    t.id_tarjeta,
    t.titulo            AS tarjeta_titulo,
    tc.id_tecnica,
    tc.nombre           AS tecnica_nombre,
    tc.tecnica_padre_id
FROM proyecto p
JOIN artista a  ON a.id_artista  = p.artista_id
JOIN tarjeta t  ON t.id_tarjeta  = p.tarjeta_id
JOIN tecnica tc ON tc.id_tecnica = t.tecnica_id;