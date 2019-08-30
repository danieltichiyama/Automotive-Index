CREATE INDEX IDX_on_MAKE_CODE_in_CAR_MODELS
ON car_models (make_code);

CREATE INDEX idx_on_year_in_car_models
ON car_models (year);

--1 24.818ms / 1.783ms
-- SELECT DISTINCT make_title FROM car_models
-- WHERE make_code='LAM';

--2 17.878ms / 5.192ms
-- SELECT DISTINCT model_title FROM car_models
-- WHERE make_code='NISSAN' AND model_code='GT-R';

--3 29.426ms / 6.821ms
-- SELECT make_code, model_code, model_title, year FROM car_models
-- WHERE make_code='LAM';

--4 175.696ms / 186.538ms
-- SELECT * FROM car_models
-- WHERE year BETWEEN 2010 AND 2015;


--5 56.473ms / 42.915ms
-- SELECT * FROM car_models
-- WHERE year=2010;

--Why are queries #4 and #5 not running faster?
    --I think it has something to do with the fact that the year is a numeric value vs a string?

