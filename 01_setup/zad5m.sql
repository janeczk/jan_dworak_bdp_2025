SELECT SUM(s.kwota + pr.kwota) AS suma_wynagrodzen
FROM wynagrodzenie w
JOIN pensja s USING (id_pensji)
JOIN premia pr USING (id_premii);
