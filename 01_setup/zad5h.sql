SELECT p.imie, p.nazwisko
FROM pracownicy p
JOIN godziny g USING (id_pracownika)
JOIN wynagrodzenie w USING (id_pracownika)
JOIN premia pr USING (id_premii)
WHERE g.liczba_godzin > 160 AND pr.kwota = 0;
