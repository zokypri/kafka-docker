
CREATE DATABASE IF NOT EXISTS NewsAgency;

USE NewsAgency;

CREATE SCHEMA if not exists ALERT_SERVICE;

CREATE TABLE if not exists ALERTS (
                                      id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                      alert_id BIGINT not null ,
                                      msg VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL,
    level VARCHAR(50) NOT NULL
    );

