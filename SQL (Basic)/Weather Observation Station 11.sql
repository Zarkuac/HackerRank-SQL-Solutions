SELECT DISTINCT CITY FROM STATION
where substring(city,1,1) not in ('A','E','I','o','u')
or substring(city,-1,1) not in ('A','E','I','o','u');
