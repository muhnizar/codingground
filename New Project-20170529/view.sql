BEGIN TRANSACTION;

DROP TABLE IF EXISTS MyTable;
/* Create a table called MyTable */

CREATE TABLE MyTable (
id VARCHAR(10) not null,
description VARCHAR(30) not null
);

INSERT INTO `MyTable` (`id`, `description`) VALUES
('101',	'Description 1'),
('102',	'Description 2');

DROP VIEW IF EXISTS myView;
CREATE  VIEW myView AS SELECT  * FROM MyTable;

COMMIT;

SELECT * FROM myView;

