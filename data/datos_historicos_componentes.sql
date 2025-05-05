CREATE DATABASE datos_historicos_componentes;

-- Tabla principal: vida_util_componentes
CREATE TABLE vida_util_componentes (
    id_componente INTEGER PRIMARY KEY,
    componente TEXT NOT NULL,
    vida_util_estimada_anios INTEGER,
    id_proveedor INTEGER
);

-- Tabla de mantenimiento preventivo
CREATE TABLE mantenimiento_preventivo (
    id_mantenimiento INTEGER PRIMARY KEY,
    id_componente INTEGER REFERENCES vida_util_componentes(id_componente),
    fecha_inspeccion DATE,
    tipo_mantenimiento TEXT,
    costo_usd NUMERIC(10, 2),
    tiempo_inactividad_horas NUMERIC(10, 2),
    fecha DATE
);

-- Tabla de fallas correctivas
CREATE TABLE fallas_correctivas (
    id_falla INTEGER PRIMARY KEY,
    id_componente INTEGER REFERENCES vida_util_componentes(id_componente),
    fecha_falla DATE,
    causa_falla TEXT,
    costo_reparacion_usd NUMERIC(10, 2),
    tiempo_inactividad_horas NUMERIC(10, 2),
    fecha DATE
);


INSERT INTO vida_util_componentes (id_componente, componente, vida_util_estimada_anios, id_proveedor) VALUES
(1, 'Generador', 25, 1),
(2, 'Caja de engranajes', 20, 2),
(3, 'Plas', 15, 3),
(4, 'Freno', 10, 4),
(5, 'Rodamientos', 12, 5),
(6, 'Torre', 30, 6),
(7, 'Sistema eléctrico', 20, 1),
(8, 'Sensor de viento', 8, 2),
(9, 'Convertidor', 15, 3),
(10, 'Motor de orientación', 12, 4);

INSERT INTO mantenimiento_preventivo (id_mantenimiento, id_componente, fecha_inspeccion, tipo_mantenimiento, costo_usd, tiempo_inactividad_horas, fecha) VALUES
(1, 8, '2019-04-26 00:00:00', 'Revisión', 4518.71, 21, '2025-03-03'),
(2, 10, '2010-02-10 00:00:00', 'Reemplazo parcial', 3094.05, 40, '2021-05-29'),
(3, 7, '2016-04-26 00:00:00', 'Lubricación', 1047.58, 35, '2022-03-08'),
(4, 9, '2018-10-23 00:00:00', 'Ajuste', 2459.41, 39, '2022-09-20'),
(5, 8, '2020-09-23 00:00:00', 'Reemplazo parcial', 4463.22, 1, '2020-08-01'),
(6, 3, '2013-05-25 00:00:00', 'Ajuste', 4721.10, 41, '2024-01-10'),
(7, 6, '2016-06-20 00:00:00', 'Lubricación', 3188.98, 47, '2023-06-03'),
(8, 6, '2019-02-19 00:00:00', 'Reemplazo parcial', 2255.77, 24, '2022-09-06'),
(9, 3, '2020-10-01 00:00:00', 'Ajuste', 2234.67, 24, '2022-07-16'),
(10, 8, '2016-05-26 00:00:00', 'Lubricación', 4859.41, 38, '2022-10-15'),
(11, 3, '2017-09-18 00:00:00', 'Ajuste', 2049.90, 15, '2021-12-30'),
(12, 9, '2017-10-03 00:00:00', 'Reemplazo parcial', 770.46, 15, '2021-12-19'),
(13, 6, '2010-09-09 00:00:00', 'Lubricación', 4821.14, 16, '2024-03-18'),
(14, 6, '2022-05-06 00:00:00', 'Lubricación', 3167.68, 28, '2025-02-10'),
(15, 7, '2017-06-28 00:00:00', 'Revisión', 1596.83, 33, '2023-10-09'),
(16, 5, '2020-03-23 00:00:00', 'Ajuste', 2316.98, 30, '2025-01-01'),
(17, 9, '2016-05-05 00:00:00', 'Reemplazo parcial', 2153.39, 40, '2022-12-11'),
(18, 8, '2011-09-29 00:00:00', 'Ajuste', 1359.38, 15, '2023-10-23'),
(19, 8, '2014-10-10 00:00:00', 'Reemplazo parcial', 4308.95, 22, '2023-09-19'),
(20, 7, '2019-05-02 00:00:00', 'Ajuste', 4651.75, 25, '2022-04-14'),
(21, 6, '2017-07-11 00:00:00', 'Lubricación', 4650.46, 14, '2022-02-01'),
(22, 4, '2017-03-28 00:00:00', 'Revisión', 3061.61, 4, '2025-03-15'),
(23, 6, '2022-08-22 00:00:00', 'Revisión', 4980.19, 48, '2024-11-14'),
(24, 6, '2014-03-30 00:00:00', 'Lubricación', 1733.80, 48, '2023-06-08'),
(25, 1, '2022-01-19 00:00:00', 'Revisión', 2223.38, 12, '2021-04-04'),
(26, 2, '2011-10-11 00:00:00', 'Reemplazo parcial', 4362.34, 38, '2021-05-30'),
(27, 1, '2017-03-09 00:00:00', 'Lubricación', 2140.27, 38, '2021-11-07'),
(28, 1, '2013-12-05 00:00:00', 'Reemplazo parcial', 2639.30, 15, '2025-01-06'),
(29, 1, '2022-08-06 00:00:00', 'Lubricación', 2476.30, 20, '2022-10-27'),
(30, 1, '2011-10-08 00:00:00', 'Revisión', 1740.69, 43, '2021-07-28');


INSERT INTO fallas_correctivas (id_falla, id_componente, fecha_falla, causa_falla, costo_reparacion_usd, tiempo_inactividad_horas, fecha) VALUES
(1, 5, '2021-10-06 00:00:00', 'Vibración excesiva', 6735.69, 67, '2022-10-26'),
(2, 6, '2010-06-02 00:00:00', 'Sobrecalentamiento', 7829.37, 37, '2022-09-09'),
(3, 9, '2011-08-23 00:00:00', 'Desgaste', 1404.51, 48, '2023-01-18'),
(4, 8, '2015-03-29 00:00:00', 'Desgaste', 5957.90, 95, '2023-02-26'),
(5, 9, '2011-03-17 00:00:00', 'Vibración excesiva', 9507.10, 36, '2024-07-05'),
(6, 9, '2019-11-01 00:00:00', 'Corrosión', 2577.85, 60, '2024-01-07'),
(7, 9, '2020-10-30 00:00:00', 'Desgaste', 2336.10, 24, '2024-01-17'),
(8, 7, '2017-01-20 00:00:00', 'Vibración excesiva', 6167.54, 73, '2022-11-12'),
(9, 3, '2021-10-11 00:00:00', 'Sobrecalentamiento', 8054.39, 95, '2022-10-09'),
(10, 3, '2014-11-15 00:00:00', 'Sobrecalentamiento', 4712.21, 34, '2023-10-17'),
(11, 10, '2018-03-04 00:00:00', 'Sobrecalentamiento', 9619.45, 51, '2023-11-20'),
(12, 2, '2018-08-17 00:00:00', 'Desgaste', 4202.64, 47, '2023-03-26'),
(13, 4, '2018-01-18 00:00:00', 'Sobrecalentamiento', 4447.71, 25, '2024-03-05'),
(14, 7, '2018-10-07 00:00:00', 'Vibración excesiva', 2972.79, 11, '2023-11-10'),
(15, 3, '2014-08-14 00:00:00', 'Vibración excesiva', 4785.72, 50, '2024-09-30'),
(16, 7, '2013-03-05 00:00:00', 'Sobrecalentamiento', 9736.77, 27, '2024-12-26'),
(17, 8, '2012-01-12 00:00:00', 'Corrosión', 4157.65, 97, '2023-04-20'),
(18, 3, '2011-03-16 00:00:00', 'Sobrecalentamiento', 1736.02, 26, '2023-12-11'),
(19, 1, '2020-09-13 00:00:00', 'Corrosión', 9006.88, 19, '2023-12-07'),
(20, 8, '2014-06-14 00:00:00', 'Desgaste', 5772.47, 70, '2024-03-06'),
(21, 8, '2010-09-23 00:00:00', 'Corrosión', 7787.57, 39, '2025-01-20'),
(22, 6, '2021-03-15 00:00:00', 'Corrosión', 2388.25, 74, '2023-10-19'),
(23, 3, '2021-05-15 00:00:00', 'Sobrecalentamiento', 8612.52, 47, '2023-03-24'),
(24, 9, '2018-12-08 00:00:00', 'Sobrecalentamiento', 3361.83, 100, '2023-05-20'),
(25, 3, '2022-04-27 00:00:00', 'Sobrecalentamiento', 1175.70, 71, '2023-04-11'),
(26, 6, '2011-05-19 00:00:00', 'Corrosión', 6476.03, 15, '2023-11-10'),
(27, 8, '2019-09-19 00:00:00', 'Desgaste', 9008.55, 43, '2022-11-12'),
(28, 5, '2016-03-18 00:00:00', 'Vibración excesiva', 9709.34, 79, '2024-11-02'),
(29, 4, '2014-03-17 00:00:00', 'Corrosión', 3980.99, 71, '2024-07-15'),
(30, 4, '2020-12-13 00:00:00', 'Desgaste', 5817.58, 54, '2022-06-27');