
--  DATOS DE INICIO  


-- Nivel 1 
INSERT INTO tecnica (nombre, estado, tecnica_padre_id) VALUES
    ('Grafito', TRUE, NULL);

-- Nivel 2
INSERT INTO tecnica (nombre, estado, tecnica_padre_id) VALUES
    ('Carboncillo', TRUE, 1),
    ('Acuarela',    TRUE, 1);

-- Nivel 3
INSERT INTO tecnica (nombre, estado, tecnica_padre_id) VALUES
    ('Grabado',   TRUE, 2),
    ('Óleo',      TRUE, 3),
    ('Acrílico',  TRUE, 3);

-- Nivel 4
INSERT INTO tecnica (nombre, estado, tecnica_padre_id) VALUES
    ('Escultura', TRUE, 4);

-- Se veria algo asi el arbol de tecnicas:
--              Grafito - 1
--             /           \
--     Carboncillo - 2   Acuarela - 3
--           |            /       \
--       Grabado - 4    Óleo - 5  Acrílico - 6
--           |
--        escultura - 7 


INSERT INTO tarjeta (titulo, descripcion, tecnica_id) VALUES

-- Grafito

('Trazos y líneas básicas',
 'Practica líneas rectas, curvas y cruzadas variando la presión del lápiz. Empieza con trazos suaves y aumenta gradualmente la intensidad. Evita raspar el papel. Ejercicio: llena una hoja solo con líneas paralelas manteniendo la misma separación.', 1),

('Sombreado y volumen',
 'Integra trazos, sombreado y control de presión en un dibujo completo. Define una fuente de luz y construye volumen desde formas básicas. Error común: enfocarse en detalles sin estructura. Ejercicio: dibuja una taza aplicando luces, sombras y texturas.', 1),


-- Carboncillo

('Manchas y degradados',
 'Trabaja con manchas amplias usando el lado del carboncillo y difumina con los dedos o difumino. Controla la transición de oscuro a claro. Error común: ensuciar toda la superficie sin jerarquía. Ejercicio: crea una escala de degradado de negro a blanco.', 2),

('Texturas con carboncillo',
 'Crea una composición completa usando manchas, degradados y texturas. Trabaja por capas y establece contraste fuerte. Error común: perder la forma por exceso de difuminado. Ejercicio: realiza un retrato o figura simple usando solo carboncillo, destacando luces y sombras.', 2),


-- Acuarela

('Aguadas y transparencias',
 'Controla la proporción agua/pigmento para crear capas ligeras. Trabaja de claro a oscuro. Error común: sobrecargar de pintura y perder transparencia. Ejercicio: pinta 5 capas superpuestas dejando secar entre cada una.', 3),

('Mezcla de colores húmedo',
 'Aplica color sobre superficie húmeda para lograr mezclas suaves y orgánicas. Inclina el papel para dirigir el flujo. Error común: intervenir demasiado y ensuciar los colores. Ejercicio: mezcla dos colores sin usar pincel después del contacto.', 3),

('Reservas y blancos',
 'Realiza una pintura completa en acuarela integrando transparencias, mezclas húmedas y reservas. Planifica los blancos desde el inicio. Error común: sobretrabajar el papel y perder frescura. Ejercicio: pinta un paisaje o escena simple combinando fondo, planos y un elemento principal.', 3),


-- Grabado

('Introducción al grabado',
 'Comprende la diferencia entre relieve y hueco. Dibuja pensando en inversión (imagen espejo). Error común: olvidar que el resultado final se invierte. Ejercicio: diseña un grabado simple y verifica su versión invertida.', 4),

('Entintado y estampado',
 'Desarrolla una estampa completa desde el diseño hasta la impresión final. Controla el entintado y la presión en cada prueba. Error común: aplicar demasiada tinta y perder detalle. Ejercicio: crea una serie de al menos 2 estampas coherentes con el mismo diseño.', 4),


-- Óleo

('Imprimación del lienzo',
 'Prepara la superficie con gesso para controlar absorción y adherencia. Lija suavemente entre capas si buscas acabado fino. Error común: pintar directo sin preparación. Ejercicio: compara un lienzo imprimado vs no imprimado.', 5),

('Mezcla de colores al óleo',
 'Trabaja con una paleta limitada y mezcla gradualmente. Comprende que el óleo seca lento, lo que permite corregir. Error común: mezclar demasiados colores y obtener tonos “sucios”. Ejercicio: crea una escala de un color con blanco y negro.', 5),

('Pinceladas y texturas',
 'Crea una pintura completa al óleo integrando mezcla de color, capas y pinceladas. Aplica la regla graso sobre magro. Error común: sobremezclar y perder vibración en el color. Ejercicio: realiza una naturaleza muerta o retrato simple trabajando por etapas.', 5),


-- Acrílico

('Capas y veladuras',
 'Aprovecha el secado rápido para trabajar por capas. Alterna entre opacidad y transparencia. Error común: no esperar el secado y levantar capas anteriores. Ejercicio: construye una imagen en 3 capas diferenciadas.', 6),

('Acrílico expresivo',
 'Realiza una obra completa en acrílico combinando capas, veladuras y pincelada expresiva. Aprovecha el secado rápido para construir y corregir. Error común: trabajar sin planificación de capas. Ejercicio: crea una pintura libre con al menos 3 niveles de profundidad.', 6),


-- Escultura

('Modelado básico',
 'Trabaja formas simples (esfera, cilindro) antes de detalles. Usa referencias reales. Error común: ir directo a detalles complejos. Ejercicio: construye una figura usando solo formas básicas.', 7),

('Construcción por capas',
 'Construye una escultura completa integrando modelado y técnica aditiva. Planifica estructura, proporciones y estabilidad. Error común: colapso por falta de soporte interno. Ejercicio: crea una figura completa (animal o personaje) desde base hasta acabado.', 7);