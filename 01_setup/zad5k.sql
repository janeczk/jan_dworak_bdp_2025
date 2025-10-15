SELECT s.stanowisko, COUNT(*) AS liczba_pracownikow
FROM pensja s
JOIN wynagrodzenie w USING (id_pensji)
GROUP BY s.stanowisko;
