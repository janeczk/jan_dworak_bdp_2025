SELECT s.stanowisko, SUM(s.kwota + pr.kwota) AS suma
FROM wynagrodzenie w
JOIN pensja s USING (id_pensji)
JOIN premia pr USING (id_premii)
GROUP BY s.stanowisko;
