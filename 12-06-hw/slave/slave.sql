STOP REPLICA;

-- Изменяем источник данных для журнала
CHANGE REPLICATION SOURCE TO
    SOURCE_HOST='mysql_master',
    SOURCE_USER='repl',
    SOURCE_PASSWORD='slavepass',
    SOURCE_SSL=1;

-- Запускаем репликацию
START REPLICA;

-- Проверяем статус
SHOW REPLICA STATUS\G;
