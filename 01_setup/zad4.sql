-- 4. Wypełnienie przykładowymi danymi (10 rekordów)
INSERT INTO pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Nowak', 'Warszawa, ul. Mickiewicza 1', '501234567'),
('Anna', 'Kowalska', 'Kraków, ul. Długa 2', '502345678'),
('Piotr', 'Wiśniewski', 'Łódź, ul. Piotrkowska 3', '503456789'),
('Julia', 'Nowicka', 'Gdańsk, ul. Grunwaldzka 4', '504567890'),
('Kamil', 'Lis', 'Poznań, ul. Główna 5', '505678901'),
('Agnieszka', 'Kamińska', 'Szczecin, ul. Słoneczna 6', '506789012'),
('Tomasz', 'Lewandowski', 'Lublin, ul. Lipowa 7', '507890123'),
('Ewa', 'Kowal', 'Katowice, ul. Warszawska 8', '508901234'),
('Michał', 'Mazur', 'Rzeszów, ul. Krótka 9', '509012345'),
('Joanna', 'Nowakowska', 'Olsztyn, ul. Zielona 10', '510123456');

INSERT INTO pensja (stanowisko, kwota) VALUES
('księgowy', 3200),
('asystent', 2100),
('kierownik', 5000),
('magazynier', 2800),
('sprzedawca', 2500),
('specjalista', 4000),
('sekretarka', 2300),
('informatyk', 4200),
('analityk', 4500),
('stażysta', 1800);

INSERT INTO premia (rodzaj, kwota) VALUES
('brak', 0),
('uznaniowa', 500),
('świąteczna', 800),
('premia roczna', 1500),
('brak', 0),
('uznaniowa', 300),
('projektowa', 1000),
('frekwencyjna', 400),
('brak', 0),
('uznaniowa', 200);

INSERT INTO godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 160, 1),
('2025-10-01', 170, 2),
('2025-10-01', 165, 3),
('2025-10-01', 160, 4),
('2025-10-01', 155, 5),
('2025-10-01', 162, 6),
('2025-10-01', 175, 7),
('2025-10-01', 160, 8),
('2025-10-01', 168, 9),
('2025-10-01', 150, 10);

INSERT INTO wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-01', 1, 1, 1, 1),
('2025-10-01', 2, 2, 2, 2),
('2025-10-01', 3, 3, 3, 3),
('2025-10-01', 4, 4, 4, 4),
('2025-10-01', 5, 5, 5, 5),
('2025-10-01', 6, 6, 6, 6),
('2025-10-01', 7, 7, 7, 7),
('2025-10-01', 8, 8, 8, 8),
('2025-10-01', 9, 9, 9, 9),
('2025-10-01', 10, 10, 10, 10);
