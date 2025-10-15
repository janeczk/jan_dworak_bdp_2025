SELECT p.imie, p.nazwisko, s.kwota, pr.kwota AS premia
FROM pracownicy p
JOIN wynagrodzenie w USING (id_pracownika)
JOIN pensja s USING (id_pensji)
JOIN premia pr USING (id_premii)
ORDER BY s.kwota DESC, pr.kwota DESC;
