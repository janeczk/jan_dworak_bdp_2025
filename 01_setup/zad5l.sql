SELECT stanowisko,
       AVG(kwota) AS srednia,
       MIN(kwota) AS minimalna,
       MAX(kwota) AS maksymalna
FROM pensja
WHERE stanowisko = 'kierownik'
GROUP BY stanowisko;
