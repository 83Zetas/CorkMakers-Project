INSERT INTO Roles (Nombre) VALUES ('Administrador'), ('Master');


-- Insertar el usuario utilizando el nombre del rol Master y la fecha de creación
INSERT INTO Usuarios (Nombre, Contraseña, Email, ID_Rol, Fecha_Creacion)
SELECT 'Pepe', 'Corcho2024', 'Pepe@example.com', ID, CURRENT_TIMESTAMP
FROM Roles
WHERE Nombre = 'Master';

-- Insertar el usuario utilizando el nombre del rol Administrador y la fecha de creación
INSERT INTO Usuarios (Nombre, Contraseña, Email, ID_Rol, Fecha_Creacion)
SELECT 'Hector', 'Corcho2024', 'Hector@example.com', ID, CURRENT_TIMESTAMP
FROM Roles
WHERE Nombre = 'Administrador';



--Inserts para Composicion

-- Inserts para las mezclas
INSERT INTO Composicion (Nombre, Descripcion) VALUES 
    ('Mezcla normal', 'Mezcla utilizada por excelencia, ya que es mas compacta debido a su composición.'),
    ('Reciclado', 'Composición a elegir por el cliente, con posibilidad de reutilizar tus propios residuos.'),
    ('Fina', 'Acabado más homogéneo con un aspecto más limpio y acabado más fino, utilizado en piezas más delicadas buscando la perfección.'),
    ('Fina dura', 'Acabado más homogéneo con un aspecto más limpio y acabado más fino, utilizado en piezas más delicadas buscando la perfección con mayor dureza.'),
    ('Alpiste', 'Corcho con aspecto más natural y ligero para piezas de mayor tamaño.'),
    ('Alpiste duro', 'Corcho con aspecto más natural y ligero para piezas de mayor tamaño pero con mayor dureza para combinar resistencia con dureza.'),
    ('Corkspum', 'Mezcla de espumas recicladas para ganar mayor flexibilidad.'),
    ('Especial', 'Composición innovadora para productos del día a día, con mejores cualidades, respecto a acabado, resistencia, etc.'),
    ('Varias mezclas', 'Producto a realizar en infinidad de mezclas, ¡consúltanos!'),
    ('Cuircork', 'Corcho granulado 50%, Cuero reciclado 49.8%, Cola de propolímero de poliuretano 10%, Tinte 0.2%'),
    ('Denim', 'Denim reciclado 67%, Cola de propolímero de poliuretano 33%'),
    ('Polyspum', 'Espuma reciclada 90%, Cola de propolímero de poliuretano 10%'),
    ('Korndu', 'Lona reciclada 8.8%, Mezcla especial corcho 90%, Cola de propolímero de poliuretano 1%, Tinte blanco 0.2%'),
    ('Polygum', 'Goma multicolor reciclada 91%, Cola de propolímero de poliuretano 9%'),
    ('Cuirtive', 'Cuero reciclado 90%, Cola de propolímero de poliuretano 10%'),
    ('Microtex', 'Textil reciclado 64%, Microfibra reciclada 13%, Cola de propolímero de poliuretano 23%'),
    ('Cork 1/2', 'Corcho 1/2 88%, Cola de propolímero de poliuretano 10%, Tinte 2%'),
    ('Cuirkmik', 'Cuero reciclado 48%, Microcuero reciclado 48%, Cola de propolímero de poliuretano 4%'),
    ('Micrauto', 'Automoción 85%, Microfibra reciclada 11%, Cola de propolímero de poliuretano 5%');


-- Inserts para las categorías
INSERT INTO Categorias (Nombre) VALUES 
    ('Decoración'),
    ('Packaging'),
    ('Deporte'),
    ('Juguetes'),
    ('Revestimientos');



INSERT INTO Productos (Nombre, Descripcion, Referencia, AlturaX, AlturaY, AlturaZ, Imagen, Imagen2, Imagen3, ID_Categoria, ID_Composicion)
VALUES 

    --Decoración
    ('Soporte menú', 'Soporte para menús para restauración y hostelería. Una forma original y moderna de presentar tus menús de tamaño más reducido. Material ligero y resistente.', '4130', 167, 335, 20, 'https://i.ibb.co/XyK7dgN/4130.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Soporte menú', 'Soporte para menús para restauración y hostelería. Una forma original y moderna de presentar tus menús de tamaño A4. Material ligero y resistente.', '4129', 245, 337, 21, 'https://i.ibb.co/WkGSFbJ/4129.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Luminaria circular plana', 'Luminaria circular plana con un diseño moderno y atrevido. Crea espacios únicos y con ese toque natural que otorga el material. Para todo tipo de ambientes.', '4099', 450, 450, 15, 'https://i.ibb.co/SVgGCDZ/4099.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Luminaria semiesférica', 'Luminaria para todo tipo de espacios. Diseño para dar un sutil toque de personalidad a cualquier espacio, convirtiéndolo en único. Rompe con las geometrías rectas que se encuentran en las estancias.', '4098', 380, 580, 290, 'https://i.ibb.co/DC3jyKV/4098.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Soporte cargador', 'Soporte cargador con práctico y ligero diseño. Abertura en la parte inferior para la colocación de cargador inalámbrico, este queda perfectamente oculto dejando a la vista el diseño del producto.', '4072', 115, 85, 18, 'https://i.ibb.co/KFQ5Qsh/4072.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Mesa', 'Mesa con una estética moderna y actual que combina perfectamente con lo natural del material. Tanto las patas como la superficie son fabricadas en el mismo material. Versátil para cualquier zona de la casa.', '4052', 550, 550, 510, 'https://i.ibb.co/Q961pRP/4052.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Jabonera', 'Jabonera con diseño ondulado el cual proporciona volumen. No solo para soporte del jabón sino que se puede usar en cualquier estancia para colocar cualquier producto. Puede ser un elemento útil, decorativo o ambas.', '4036', 208, 362, 60, 'https://i.ibb.co/V2PjTw0/4036.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Portacepillos', 'Vaso porta cepillos con líneas curvas que juegan con el dinamismo visual y rompen las líneas rectas de las estancias. Para el baño y cualquier habitación del hogar. Tan práctico como decorativo.', '4035', 160, 160, 250, 'https://i.ibb.co/wcT5TKR/4035.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Jabonera', 'Jabonera para el baño. Caja tanto decorativa como práctica. Guarda y protege el jabón sin que la jabonera coa color.', '3945', 84, 84, 45, 'https://i.ibb.co/5vzPk5q/3945.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Expositor', 'Expositor con original diseño geométrico. Una forma práctica de decorar las estancias. Infinidad de usos.', '3903', 80, 100, 20, 'https://i.ibb.co/C7bBt4F/3903.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Bloque ladrillo de corcho', 'Bloque ladrillo más ligero y resistente. Se pueden ampliar entre si sin necesidad de otro material. Una forma fácil y sencilla de crear estructuras.', '3466', 360, 120, 180, 'https://i.ibb.co/J7TTrqg/3466.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Percha de corcho', 'Percha de diseño clásico y resistente. Forma de gancho en la parte superior. Perfecta para qualquier armario.', '3521', 432, 46, 247, 'https://i.ibb.co/RTzp465/3521.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Botijo de corcho', 'Botijo con una estética diferente a la tradicional, pero sin perder ese toque natural. Además, gracias a su material tiene un menor peso. Es un producto perfecto para la decoración de cualquier estancia.', '3520', 202, 199, 388, 'https://i.ibb.co/bHGVBGx/3520.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Percha de corcho', 'Percha con diseño sencillo. Forma de gancho en la parte superior. Barra transversal para colgar múltiples prendas. Pequeñas ranuras para sujetar las prendas más difíciles de colgar.', '3497', 433, 15, 201, 'https://i.ibb.co/QP0Xkzp/3497.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Percha de corcho', 'Percha con diseño orgánico gracias a su forma redondeada. Forma de gancho en la parte superior y barra para colgar múltiples prendas.', '3450', 390, 25, 230, 'https://i.ibb.co/MMpPJxr/3450.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Percha de corcho', 'Percha con un diseño clásico y elegante. Forma de gancho en la parte superior para un uso más cómodo. Barra transversal para facilitar el colgado de múltiples prendas.', '3421', 442, 14, 255, 'https://i.ibb.co/ZgL3m4R/3421.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Frutero de corcho', 'Frutero con diseño redondeado con formas curvas que rompen con las líneas rectas que suelen encontrarse en las estancias.', '3428', 340, 260, 100, 'https://i.ibb.co/1GYRq5B/3428.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Decoración'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas'));


INSERT INTO Productos (Nombre, Descripcion, Referencia, AlturaX, AlturaY, AlturaZ, Imagen, Imagen2, Imagen3, ID_Categoria, ID_Composicion)
VALUES 
    -- Packaging
    ('Caja de zapatos', 'Caja de zapatos práctica y resistente. Diseño con el logo tanto en la parte superior como en la inferior. Perfecto para guardar el calzado, qualquier otro producto o incluso para uso decorativo.', '3784', 230, 330, 112, 'https://i.ibb.co/NYJfQk6/3784.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Packaging'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Estuche de vino', 'Estuche de vino práctico y resistente. La forma más fácil para transportar las botellas de vino. Facilira la sujeción de las botellas gracias al hueco interno con la forma de estas.', '3470', 115, 108, 340, 'https://i.ibb.co/7Wzg1Zj/3470.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Packaging'), (SELECT ID FROM Composicion WHERE Nombre = 'Fina')),
    ('Maletín', 'Maletín con multiples compartimentos interno para la colocación de objetos pequeños. Todos los productos ordenados y bien protegidos.', '3459', 171, 259, 58, 'https://i.ibb.co/M9f3hZ4/3459.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Packaging'), (SELECT ID FROM Composicion WHERE Nombre = 'Fina'));


INSERT INTO Productos (Nombre, Descripcion, Referencia, AlturaX, AlturaY, AlturaZ, Imagen, Imagen2, Imagen3, ID_Categoria, ID_Composicion)
VALUES 
    -- Deporte
    ('Trofeo 3', 'Trofeo de número 3 con un material y diseño original. Combinará perfectamente como elemento decorativo en cualquier estancia de la casa. Rompe la estética fría de los clásicos trofeos. Forma original de celebrar tus victorias.', '3969-3', 205, 113, 53, 'https://i.ibb.co/PhLYJh8/3969-3.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Deporte'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Trofeo 2', 'Trofeo de número 2 con un material y diseño original. Combinará perfectamente como elemento decorativo en cualquier estancia de la casa. Rompe la estética fría de los clásicos trofeos. Forma original de celebrar tus victorias.', '3969-2', 235, 130, 54, 'https://i.ibb.co/sbKfQFJ/3969-2.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Deporte'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Trofeo 1', 'Trofeo de número 1 con un material y diseño original. Combinará perfectamente como elemento decorativo en cualquier estancia de la casa. Rompe la estética fría de los clásicos trofeos. Forma original de celebrar tus victorias.', '3969-1', 265, 147, 54, 'https://i.ibb.co/Bqjh0wM/3969-1.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Deporte'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Masajeador', 'Masajeador con diseño práctico y moderno. Gracias a su tamaño es muy manejable. Alivia los dolores y molestias, relaja el estrés y las tensiones de un día ajetreado.', '3789', 159, 80, 82, 'https://i.ibb.co/fpLBVXL/3789.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Deporte'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Bloque de yoga', 'Bloque para la práctica de yoga y otras actividades. Resistente y ligero, lo que lo hace fácil de transportar. Esquinas con acabado redondeada para una mayor comodidad.', '3779', 120, 227, 75, 'https://i.ibb.co/Wp5Mtx0/3779.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Deporte'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas'));


INSERT INTO Productos (Nombre, Descripcion, Referencia, AlturaX, AlturaY, AlturaZ, Imagen, Imagen2, Imagen3, ID_Categoria, ID_Composicion)
VALUES 
    -- Juguetes

    ('Bolos mini', 'Los clásicos bolos de siempre en su versión más moderna y manejable. Gracias a su tamaño son fáciles de transportar para jugar en cualquier sitio.', '3787', 50, 50, 100, 'https://i.ibb.co/fdRRT35/3787.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Juguetes'), (SELECT ID FROM Composicion WHERE Nombre = 'Especial')),
    ('3 en raya. Juego de mesa', 'El clásico juego 3 en raya en un material resistente. Un diseño innovador para un juego de toda la vida. Fácil de transportar para jugar en cualquier sitio.', '3785', 210, 210, 25, 'https://i.ibb.co/Hp3YPrV/3785.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Juguetes'), (SELECT ID FROM Composicion WHERE Nombre = 'Especial'));


INSERT INTO Productos (Nombre, Descripcion, Referencia, AlturaX, AlturaY, AlturaZ, Imagen, Imagen2, Imagen3, ID_Categoria, ID_Composicion)
VALUES 
    -- Revestimientos

    ('Revestimiento', 'Revestimiento hexagonal con motivo de hojas. Crea un ambiente único combinando las piezas entre si para crear un mural más grande consiguiendo interés focal en la habitación.', '3267', 260, 300, 15, 'https://i.ibb.co/wyyMNrF/3267.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Especial')),
    ('Esterilla puzle de corcho', 'Esterilla puzle perfecta para revestimientos de pared y suelo. Fácilmente combinables entre si para la creación de grandes superficies.', '3446', 288, 288, 19, 'https://i.ibb.co/ZTVPBPT/3446.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Celosía de corcho', 'Celosía con diseño geométrico que evoca el mundo árabe. Gracias a su estructura de fácil montaje se pueden crear separadores en espacios abiertos para conseguir privacidad a la vez que se genera un elemento decorativo. Gracias a su forma permite la entrada de una luz más tenue en la estancia proporcionando una sensación de calidez.', '3535', 313, 85, 290, 'https://i.ibb.co/fnYfLRb/3535.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Especial')),
    ('Revestimiento de corcho para pared', 'Revestimiento de una sola pieza con formas lineales creadas de manera diagonal. Ofrece infinitas posibilidades de diseño para la pared. Mediante la colocación se puede jugar con la percepción de las líneas y los motivos que estás generando.', '3653', 300, 600, 15, 'https://i.ibb.co/Bf9WPLG/3653.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Especial')),
    ('Revestimiento para pared', 'Revestimiento con diseño en forma de rombo con líneas transversales que simulan un panelado. Crea un mosaico geométrico irregular gracias a las distintas configuraciones: horizontal, vertical y diagonal. Dependiendo de la colocación se obtienen distintos efectos visuales.', '3783', 245, 424, 12, 'https://i.ibb.co/q9dBpTJ/3783.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Especial')),
    ('Revestimiento para pared', 'Revestimiento para la pared que juega con la percepción de la forma. Gracias a su diseño es posible combinarlo en múltiples direcciones para crear una combinación en una zona de mayor tamaño. Esta versatilidad permite que se genere un juego de luces y sombras que irá variando en función de la colocacón.', '3782', 245, 424, 30, 'https://i.ibb.co/C9KnxnQ/3782.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Especial')),
    ('Divisoria', 'Revestimiento original para usar como separación de ambientes. Gracias a su diseño son combinables entre sí de forma sencilla. Se pueden crear distintos modelos dependiendo de cómo se unan.', '3955', 301, 605, 20, 'https://i.ibb.co/jW6sY9w/3955.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Placa techo', 'Placa de techo con diseño clásico que recuerda a las placas de escayola. Una forma moderna e innovadora de revestir el techo de cualquier estancia. Gracias a su forma orgánica da dinamismo visual.', '3956', 590, 590, 25, 'https://i.ibb.co/5kQhC3t/3956.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Revestimiento', 'Revestimiento dinámico con una estética única y grandes propiedades acústicas. Una única pieza que juega con el volumen de semiesferas para dar sensación de profundidad. El panel tiene un llamativo efecto visual que proporcionauna atmósfera íntima y agradable.', '3989', 300, 300, 55, 'https://i.ibb.co/h7Kb42h/3989.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Revestimiento', 'Revestimiento con un diseño que es la simbiosis perfecta entre movimiento, forma y textura. El diseño permite la creacion de piezas más grandes en las cuales se obtendrá una estética orgánica mediante la creación de curcunferencias y ondas. Añade dinamismo visual al interior de la estancia.', '4003', 300, 300, 30, 'https://i.ibb.co/gWg05JX/4003.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Revestimiento', 'Revestimiento evolutivo y dinámico con grandes propiedades acústicas gracias a su diseño. Al combinarse en una superficie grande se crean formas orgánicas y fluidas. Este diseño modelado, genera dinamismo visual en la estancia.', '4004', 300, 300, 30, 'https://i.ibb.co/VWmf7PZ/4004.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Revestimiento', 'Revestimiento con estructura hexagonal. Con la colocación de varias piezas se crea un mosaico geométrico que juega con las luces y las sombras. El diseño en relieve y ese juego, hacen que tenga un llamativo efecto visual, el cual se puede utilizar para crear interés focal en una habitación.', '4005', 175, 300, 45, 'https://i.ibb.co/9cTS27D/4005.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Pavimento', 'Pavimento para el suelo. Gracias a las propiedades de adherencia es un candidato perfecto para colocar en el suelo ya que esto dificulta el deslizamiento. No solo es un material resistente, también es un aislante térmico y acústico. Y gracias a su elasticidad no habrá problema con los golpes que este pueda recibir.', '4092', 508, 508, 15, 'https://i.ibb.co/wJ9xKrp/4092.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas')),
    ('Panel', 'Revestimiento con curvas redondeadas que dan un efecto 3D a la composición. El diseño proporciona un agradable contraste a las formas rectas que solemos encontrar en las estancias. Crea un hambiente natural y acogedor en cualquier espacio.', '4051', 406, 406, 44, 'https://i.ibb.co/drZprbs/4051.png', NULL, NULL, (SELECT ID FROM Categorias WHERE Nombre = 'Revestimientos'), (SELECT ID FROM Composicion WHERE Nombre = 'Varias mezclas'));
   
