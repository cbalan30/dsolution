SELECT    CONCAT(title, ' ', forename, ' ', surname) AS name
FROM      customer c
JOIN      (
              SELECT    MAX(id) max_id, customer_id 
              FROM      customer_data 
              GROUP BY  customer_id
          ) c_max ON (c_max.customer_id = c.customer_id)
JOIN      customer_data cd ON (cd.id = c_max.max_id)
WHERE     CONCAT(title, ' ', forename, ' ', surname) LIKE '%Smith%' 
LIMIT     10, 20;


SELECT * FROM `fund` F INNER JOIN `fund_price` FP ON FP.fid = F.fid WHERE F.fhid = 1 ORDER BY F.fid 


SELECT * FROM `fund` F
	INNER JOIN ( 
				SELECT fid, price, fund_date FROM `fund_price` 
					ORDER BY fund_date DESC
						LIMIT 1
				) X ON X.fid = F.fid
	WHERE F.fhid = 1
	
	
SELECT 	* FROM `fund_price` WHERE fund_date = '2019-01-25' AND fid IN (SELECT fid FROM `fund` WHERE fhid = 1)

SELECT 	COUNT(*) FROM `fund_price` WHERE fund_date = '2019-01-25' AND fid IN (SELECT fid FROM `fund` WHERE fhid = 1)

SELECT COUNT(*) FROM `fund` WHERE fhid = 1

SELECT price, round(( price * 9 / 10 ),4) AS newprice FROM `fund_price` LIMIT 1

SELECT MIN(fund_date) FROM fund_price WHERE fund_date <> '2018-12-31'


INSERT INTO `fund_price` (fid, price,fund_date,description,date_modified) 	
	SELECT 	fid, round(( price * 12 / 10 ),4), '2019-01-20', 'mock', now() FROM `fund_price` WHERE fund_date = '2019-01-25' AND fid IN (SELECT fid FROM `fund` WHERE fhid = 1);
	
INSERT INTO `fund_price` (fid, price,fund_date,description,date_modified) 	
	SELECT 	fid, round(( price * 11 / 10 ),4), '2019-01-20', 'mock', now() FROM `fund_price` WHERE fund_date = '2019-01-25' AND fid IN (SELECT fid FROM `fund` WHERE fhid = 2);
	
	
	SELECT F.*, FH.name AS 'fundhouse' FROM `fund` F
		INNER JOIN `fund_house` FH ON F.fhid = FH.fhid
		
		
	SELECT F.*, FH.name AS 'fundhouse', (SELECT fund_date FROM `fund_price` WHERE fid = F.fid ORDER BY fund_date DESC LIMIT 1) AS funddate FROM `fund` F
		INNER JOIN `fund_house` FH ON F.fhid = FH.fhid
		
		
	SELECT F.*, FH.name AS 'fundhouse', FP.fund_date, FP.price FROM `fund` F
		INNER JOIN `fund_house` FH ON F.fhid = FH.fhid
			INNER JOIN `fund_price` FP ON FP.fid = F.fid
			
			WHERE F.fid = 1
			
			
	SELECT F.*, (SELECT fund_date FROM `fund_price` WHERE fid = F.fid ORDER BY fund_date DESC LIMIT 1) AS funddate FROM `fund` F
	
	
	
	UPDATE
	  `fund` as F
	  inner join (
		SELECT fund_date, fid, price FROM `fund_price` ORDER BY fund_date DESC LIMIT 1
	  ) as A on F.fid = A.fid
	set F.latest_fund_date = A.fund_date, F.latest_price = A.price
	
	
	SELECT F.*, A.fund_date,A.price FROM `fund` as F
	  inner join (
		SELECT fund_date, fid, price FROM `fund_price` ORDER BY fund_date DESC
	  ) as A on F.fid = A.fid
	
		
		