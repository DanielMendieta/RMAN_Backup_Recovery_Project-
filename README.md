## Proyecto: Backup y Recovery con RMAN en Oracle 19c

## Objetivo
Demostrar la implementación de una estrategia de respaldo y recuperación utilizando RMAN (Recovery Manager). Se simula un entorno controlado donde se produce un error intencional, y luego se recuperan los datos de forma efectiva.

## Estructura del proyecto

- 01_configuracion_inicial/: Configuración del entorno y creación de objetos de prueba.
- 02_backup_completo/: Ejecución de respaldos completos con RMAN.
- 03_verificacion_backup/: Validación y verificación de los backups realizados.
- 04_simulacion_perdida_datos/: Simulación de pérdida o eliminación de datos para pruebas.
- 05_recovery_datafile/: Restauración y recuperación de datafiles específicos tras la pérdida.
- 06_recovery_total/: Recuperación completa de toda la base de datos ante pérdida total.
- 07_verificacion_final/: Comprobación del estado, consistencia y disponibilidad luego de la recuperación.

## Tecnologías y herramientas utilizadas

- Oracle Database 19c
- RMAN (Recovery Manager)
- Oracle SQL*Plus / SQL Developer
- Sistema operativo Oracle Linux (VirtualBox)

## Habilidades demostradas

- Configuración de base de datos en modo ARCHIVELOG.
- Uso operativo de RMAN para respaldos y recuperación.
- Gestión del control file y SPFILE.
- Simulación y resolución de fallos.
- Validación y documentación de procesos críticos.

