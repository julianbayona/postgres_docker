
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO usuarios (nombre, email) VALUES 
    ('Juan Pérez', 'juan@example.com'),
    ('María García', 'maria@example.com'),
    ('Carlos López', 'carlos@example.com');

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(200) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50),
    stock INTEGER DEFAULT 0
);

INSERT INTO productos (nombre, precio, categoria, stock) VALUES 
    ('Laptop', 1200.00, 'Tecnología', 10),
    ('Mouse', 25.50, 'Accesorios', 50),
    ('Teclado', 75.99, 'Accesorios', 30);

SELECT 'Base de datos inicializada correctamente' as mensaje;
