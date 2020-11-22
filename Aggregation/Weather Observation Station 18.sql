/* 
p1(x1, y1) and p2(x2, y2)
|x1 - x2| + |y1 - y2|
*/
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)),4)  FROM STATION