create database feedback_database;
use feedback_database;

create table answers (
id bigint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
alt_answer varchar(255),
time_submit datetime not null
);
ALTER TABLE answers ADD UNIQUE KEY uniq_data (data);

INSERT INTO answers (data, ticked)
VALUES (?, NOW())
ON DUPLICATE KEY UPDATE ticked = VALUES(ticked);