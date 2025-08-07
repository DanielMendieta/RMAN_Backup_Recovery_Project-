-- 1. Verificar si la base está en modo ARCHIVELOG
ARCHIVE LOG LIST;

-- 2. En caso de que no esté en ARCHIVELOG, seguir estos pasos:
-- (Estos comandos deben ejecutarse en modo MOUNT, por fuera de SQL Developer)
-- SHUTDOWN IMMEDIATE
-- STARTUP MOUNT
-- ALTER DATABASE ARCHIVELOG;
-- ALTER DATABASE OPEN;

-- 3. Crear tablespace de prueba (opcional)
CREATE TABLESPACE ts_backup_demo DATAFILE 'ts_backup_demo01.dbf' SIZE 50M AUTOEXTEND ON;

-- 4. Crear usuario de prueba
CREATE USER backup_daniel IDENTIFIED BY backup123
DEFAULT TABLESPACE ts_backup_demo
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED ON ts_backup_demo;

-- 5. Asignar privilegios
GRANT CONNECT, RESOURCE TO backup_daniel;

-- 6. Conectarse con el nuevo usuario
-- CONNECT backup_daniel/backup123;

-- 7. Crear tabla de prueba
CREATE TABLE demo_empleados (
    id          NUMBER PRIMARY KEY,
    nombre      VARCHAR2(100),
    puesto      VARCHAR2(50),
    fecha_ing   DATE DEFAULT SYSDATE
);

-- 8. Insertar datos
INSERT INTO demo_empleados (id, nombre, puesto)
VALUES (1, 'Laura Fernández', 'Analista');

INSERT INTO demo_empleados (id, nombre, puesto)
VALUES (2, 'Carlos Gómez', 'DBA');

INSERT INTO demo_empleados (id, nombre, puesto)
VALUES (3, 'Ana Martínez', 'Desarrolladora');

COMMIT;

-- 9. Verificar datos
SELECT * FROM demo_empleados;
