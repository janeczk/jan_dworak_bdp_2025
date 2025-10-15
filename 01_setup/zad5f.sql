SELECT p.imie, p.nazwisko, (g.liczba_godzin - 160) AS nadgodziny
FROM pracownicy p
JOIN godziny g USING (id_pracownika)
WHERE g.liczba_godzin > 160;
