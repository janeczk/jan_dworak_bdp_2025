SELECT s.stanowisko, COUNT(pr.id_premii) AS liczba_premii
FROM wynagrodzenie w
JOIN pensja s USING (id_pensji)
JOIN premia pr USING (id_premii)
GROUP BY s.stanowisko;
