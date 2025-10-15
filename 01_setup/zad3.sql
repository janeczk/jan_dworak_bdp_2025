-- 3.1 Tabela pracownicy
CREATE TABLE pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(100),
    telefon VARCHAR(15)
);
COMMENT ON TABLE pracownicy IS 'Dane osobowe pracowników.';

-- 3.2 Tabela godziny
CREATE TABLE godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin INT CHECK (liczba_godzin >= 0),
    id_pracownika INT REFERENCES pracownicy(id_pracownika)
);
COMMENT ON TABLE godziny IS 'Rejestr przepracowanych godzin.';

-- 3.3 Tabela pensja
CREATE TABLE pensja (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(50),
    kwota NUMERIC(10,2) CHECK (kwota >= 0)
);
COMMENT ON TABLE pensja IS 'Tabela wynagrodzeń podstawowych.';

-- 3.4 Tabela premia
CREATE TABLE premia (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(50),
    kwota NUMERIC(10,2) CHECK (kwota >= 0)
);
COMMENT ON TABLE premia IS 'Tabela premii przyznawanych pracownikom.';

-- 3.5 Tabela wynagrodzenie (łącząca)
CREATE TABLE wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT REFERENCES pracownicy(id_pracownika),
    id_godziny INT REFERENCES godziny(id_godziny),
    id_pensji INT REFERENCES pensja(id_pensji),
    id_premii INT REFERENCES premia(id_premii)
);
COMMENT ON TABLE wynagrodzenie IS 'Tabela łącząca wszystkie składniki wynagrodzenia.';
