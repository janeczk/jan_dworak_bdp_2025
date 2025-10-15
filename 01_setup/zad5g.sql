SELECT p.imie, p.nazwisko, s.kwota
FROM pracownicy p
JOIN wynagrodzenie w USING (id_pracownika)
JOIN pensja s USING (id_pensji)
WHERE s.kwota BETWEEN 1500 AND 3000;
