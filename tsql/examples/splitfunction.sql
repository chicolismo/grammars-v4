SELECT SPLIT.A.VALUE('.', 'INT') AS SPLV 
FROM 
	(SELECT 
		CAST('<SPL>' + REPLACE('1,2,3', ',', '</SPL><SPL>') + '</SPL>' AS XML) AS DTA
	) AS A 
  CROSS APPLY 
	DTA.NODES ('/SPL') AS SPLIT(A)