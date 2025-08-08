--Identificar el datafile asociado al tablespace USERS
SELECT file_name FROM dba_data_files WHERE tablespace_name = 'ts_backup_demo';


--Eliminamos
rm /u01/app/oracle/oradata/ORCL/ts_backup_demo01.dbf
