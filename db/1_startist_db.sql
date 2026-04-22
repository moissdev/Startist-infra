DROP TABLE IF EXISTS proyecto CASCADE;
DROP TABLE IF EXISTS tarjeta  CASCADE;
DROP TABLE IF EXISTS tecnica  CASCADE;
DROP TABLE IF EXISTS artista  CASCADE;


CREATE TABLE artista (
    id_artista      SERIAL          PRIMARY KEY,
    nombre          VARCHAR(255)    NOT NULL UNIQUE,
    contrasena      VARCHAR(255)    NOT NULL,
    descripcion     VARCHAR(255),
    fecha_registro  TIMESTAMP       NOT NULL DEFAULT NOW()
);


CREATE TABLE tecnica (
    id_tecnica       SERIAL          PRIMARY KEY,
    nombre           VARCHAR(255)    NOT NULL,
    estado           BOOLEAN         NOT NULL DEFAULT TRUE,
    tecnica_padre_id INTEGER         REFERENCES tecnica(id_tecnica)
);

CREATE TABLE tarjeta (
    id_tarjeta  SERIAL          PRIMARY KEY,
    titulo      VARCHAR(255)    NOT NULL,
    descripcion TEXT,
    tecnica_id  INTEGER         NOT NULL REFERENCES tecnica(id_tecnica) ON DELETE CASCADE,
    estado      BOOLEAN         NOT NULL DEFAULT TRUE
);

CREATE TABLE proyecto (
    id_proyecto SERIAL          PRIMARY KEY,
    titulo      VARCHAR(255)    NOT NULL,
    archivo     VARCHAR(255)    NOT NULL,
    descripcion VARCHAR(255),
    artista_id  INTEGER         NOT NULL REFERENCES artista(id_artista) ON DELETE CASCADE,
    tarjeta_id  INTEGER         NOT NULL REFERENCES tarjeta(id_tarjeta) ON DELETE CASCADE,
    CONSTRAINT unique_artista_tarjeta UNIQUE (artista_id, tarjeta_id)  
);