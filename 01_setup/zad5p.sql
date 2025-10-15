DELETE FROM pracownicy
WHERE id_pracownika IN (
    SELECT id_pracownika
    FROM wynagrodzenie w
    JOIN pensja s USING (id_pensji)
    WHERE s.kwota < 1200
);
