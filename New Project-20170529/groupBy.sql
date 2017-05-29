BEGIN TRANSACTION;

DROP TABLE IF EXISTS Nilai;
/* Create a table called NAMES */

CREATE TABLE Nilai (
nim VARCHAR(10) not null,
nama VARCHAR(30) not null,
matkul VARCHAR(20) not null,
nilai INT(3) not null,
primary key(nim, nama, matkul)
);

INSERT INTO `nilai` (`nim`, `nama`, `matkul`, `nilai`) VALUES
('0911500101',	'ADI',	'ALGORITMA',	3),
('0911500102',	'IDA',	'ALGORITMA',	2),
('0911500105',	'ANI',	'ALGORITMA',	1),
('0911500101',	'ADI',	'PTI',	1),
('0911500102',	'IDA',	'PTI',	1),
('0911500101',	'ADI',	'KALKULUS',	2);
COMMIT;

/* Display all the records from the table */
/*SELECT nim, nama, AVG(nilai) as rata_rata FROM nilai GROUP BY nim;*/
/*select nim, nama , MAX(nilai) , MIN(nilai) from nilai group by nim;*/
SELECT nim, nama, AVG(nilai) as rata_rata FROM Nilai GROUP BY nim HAVING AVG(nilai)> 1 ;

