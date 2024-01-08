
USE AlertService;

CREATE TABLE if not exists alerts (
                                      id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                      alert_id BIGINT not null ,
                                      msg VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL,
    level VARCHAR(50) NOT NULL
    );
