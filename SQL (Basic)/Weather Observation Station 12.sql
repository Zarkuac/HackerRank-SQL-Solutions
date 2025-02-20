SELECT DISTINCT CITY FROM STATION
where substring(city,1,1) not in ('A','E','I','o','u')
and substring(city,-1,1) not in ('A','E','I','o','u');
