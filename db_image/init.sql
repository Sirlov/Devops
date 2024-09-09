CREATE database db_nemo_test OWNER postgres;
\c db_nemo_test;

CREATE TABLE Email (
  ID SERIAL PRIMARY KEY,
  "Электронная почта" VARCHAR(100) NOT NULL
);

CREATE TABLE Phone (
  ID SERIAL PRIMARY KEY,
  "Номер телефона" VARCHAR(100) NOT NULL
);

INSERT INTO Email ("Электронная почта") VALUES
    ('hruk@mail.ru'),
    ('kar@mail.ru'),
    ('gav@mail.ru');

INSERT INTO Phone ("Номер телефона") VALUES
   ('+79995552233'),
   ('89031029977'),
   ('84959635874');
