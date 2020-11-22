/*
p1(min lat, min long)  p2(max lat, max long)
*/
SELECT ROUND(
    SQRT(
        POW(MAX(LAT_N) - MIN(LAT_N),2)+
        POW(MAX(LONG_W) - MIN(LONG_W),2)
           )
         ,4) FROM STATION