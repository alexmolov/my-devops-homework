CREATE USER 'repl'@'%' IDENTIFIED WITH mysql_native_password BY 'slavepass';

-- Выдаем права на репликацию
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';

-- Применяем изменения
FLUSH PRIVILEGES;

-- Создаем тестовую базу данных
CREATE DATABASE IF NOT EXISTS test_db;
USE test_db;

-- Создаем тестовую таблицу
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Добавляем тестовые данные
INSERT INTO users (name) VALUES ('User1'), ('User2'), ('User3');
