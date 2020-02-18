INSERT INTO `fund_price` (fid,price,fund_date,description,date_modified) VALUES (1,'0.0000','2018-12-31','mock','2018-01-29 01:30:00');

INSERT INTO `temp` (name, price, date) VALUES ('', '', '');



INSERT INTO `fund_price` (fid, price,fund_date,description,date_modified) 
	SELECT F.fid, T.price, t.date, 'manual', now() FROM temp T INNER JOIN fund F ON F.name = T.name;
	
	
INSERT INTO `temp` (name, price, date) VALUES ('XXX', 'XXX', 'XXX');
