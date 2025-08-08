--Verificar estado de la base
SELECT name, open_mode FROM v$database;

--Verificar el esquema backup_daniel
SELECT username, account_status FROM dba_users WHERE username = 'BACKUP_DANIEL';

--Consultar las tablas y filas del esquema
SELECT table_name FROM dba_tables WHERE owner = 'BACKUP_DANIEL';

SELECT COUNT(*) FROM backup_daniel.empleados;
SELECT COUNT(*) FROM backup_daniel.historial_salarios;

--Confirmar que los objetos están válidos
SELECT object_type, status, COUNT(*) 
FROM dba_objects 
WHERE owner = 'BACKUP_DANIEL'
GROUP BY object_type, status;

--Consultar log de recuperación
SELECT * FROM v$recovery_log;



