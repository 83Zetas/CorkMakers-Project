CREATE TABLE Roles (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL
);

-- Tabla Usuarios
CREATE TABLE Usuarios (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Contraseña VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    ID_Rol UUID NOT NULL,
    Fecha_Creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    verificado BOOlEAN DEFAULT False,
    FOREIGN KEY (ID_Rol) REFERENCES Roles(ID)
);

-- Tabla Composicion
CREATE TABLE Composicion (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT
);

-- Tabla Categorias
CREATE TABLE Categorias (
    ID SERIAL PRIMARY KEY,
    visible BOOlEAN DEFAULT False,
    Nombre VARCHAR(100) NOT NULL
);

-- Tabla Productos
CREATE TABLE Productos (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Referencia VARCHAR(50),
    AlturaX FLOAT,
    AlturaY FLOAT,
    AlturaZ FLOAT,
    Imagen VARCHAR(200),
    Imagen2 VARCHAR(200),
    Imagen3 VARCHAR(200),
    Peso FLOAT,
    ID_Categoria UUID NOT NULL,
    ID_Composicion UUID NOT NULL,
    FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID),
    FOREIGN KEY (ID_Composicion) REFERENCES Composicion(ID)
);

/* -- Tabla Usuario_Producto (para la relación N:N entre Usuarios y Productos)
CREATE TABLE Usuario_Producto (
    ID_Usuario UUID NOT NULL,
    ID_Producto UUID NOT NULL,
    Accion VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID_Usuario, ID_Producto),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID)
);

-- Tabla Usuario_Categoria (para la relación N:N entre Usuarios y Categorias)
CREATE TABLE Usuario_Categoria (
    ID_Usuario UUID NOT NULL,
    ID_Categoria UUID NOT NULL,
    Accion VARCHAR(20) NOT NULL,
    
    PRIMARY KEY (ID_Usuario, ID_Categoria),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID),
    FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID)
);

-- Tabla Usuario_Composicion (para la relación N:N entre Usuarios y Composiciones)
CREATE TABLE Usuario_Composicion (
    ID_Usuario UUID NOT NULL,
    ID_Composicion UUID NOT NULL,
    Accion VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID_Usuario, ID_Composicion),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID),
    FOREIGN KEY (ID_Composicion) REFERENCES Composicion(ID)
); */

--Fecha de descarga del pdf


-- Eliminar la tabla Productos con cascade
DROP TABLE IF EXISTS Productos CASCADE;

-- Eliminar la tabla Categorias con cascade
DROP TABLE IF EXISTS Categorias CASCADE;

-- Eliminar la tabla Composicion con cascade
DROP TABLE IF EXISTS Composicion CASCADE;

-- Eliminar la tabla Usuarios con cascade
DROP TABLE IF EXISTS Usuarios CASCADE;

-- Eliminar la tabla Roles con cascade
DROP TABLE IF EXISTS Roles CASCADE;


