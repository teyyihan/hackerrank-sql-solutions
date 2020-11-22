/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
DECLARE @i INTEGER;
SET @i = 20;
 
WHILE @i > 0
BEGIN
    SELECT REPLICATE('* ', @i);
   SET @i = @i - 1;
END;