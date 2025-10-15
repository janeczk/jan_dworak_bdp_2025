SELECT p.imie, p.nazwisko, s.kwota
FROM pracownicy p
JOIN wynagrodzenie w USING (id_pracownika)
JOIN pensja s USING (id_pensji)
ORDER BY s.kwota;
