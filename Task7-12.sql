/*7. В подключенном MySQL репозитории создать базу данных “Друзья
человека”
*/
DROP DATABASE IF EXISTS Друзья человека;
CREATE DATABASE Друзья человека;

USE `Друзья человека`;
/* 
8. Создать таблицы с иерархией из диаграммы в БД
*/

DROP TABLE IF EXISTS `Животные`;
CREATE TABLE `Животные`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
    `Класс животных` VARCHAR(30)
);

DROP TABLE IF EXISTS `собаки`;
CREATE TABLE `собаки`(
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	`Имя` VARCHAR(50) NOT NULL,
	`Команды` VARCHAR(60) NOT NULL,
	`Дата рождения` DATE,
	`Класс животных id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`Класс животных id`) REFERENCES `Животные` (`id`) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `Кошки`;
CREATE TABLE `Кошки` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `Имя` VARCHAR(50) NOT NULL,
  `Команды` VARCHAR(100) NOT NULL,
  `Дата рождения` DATE NOT NULL,
  `Класс животных id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`Класс животных id`) REFERENCES `Животные` (`id`) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `Хомячки`;
CREATE TABLE `Хомячки` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `Имя` VARCHAR(50) NOT NULL,
  `Команды` VARCHAR(100) NOT NULL,
  `Дата рождения` DATE NOT NULL,
  `Класс животных id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`Класс животных id`) REFERENCES `Животные` (`id`) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `Лошади`;
CREATE TABLE `Лошади` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `Имя` VARCHAR(50) NOT NULL,
  `Команды` VARCHAR(100) NOT NULL,
  `Дата рождения` DATE NOT NULL,
  `Класс животных id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`Класс животных id`) REFERENCES `Животные` (`id`) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `Верблюды`;
CREATE TABLE `Верблюды` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `Имя` VARCHAR(50) NOT NULL,
  `Команды` VARCHAR(100) NOT NULL,
  `Дата рождения` DATE NOT NULL,
  `Класс животных id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`Класс животных id`) REFERENCES `Животные` (`id`) ON DELETE CASCADE
);

DROP TABLE IF EXISTS `Ослы`;
CREATE TABLE `Ослы` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `Имя` VARCHAR(50) NOT NULL,
  `Команды` VARCHAR(100) NOT NULL,
  `Дата рождения` DATE NOT NULL,
  `Класс животных id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`Класс животных id`) REFERENCES `Животные` (`id`) ON DELETE CASCADE
);

/*
9. Заполнить низкоуровневые таблицы именами(животных), командами
которые они выполняют и датами рождения
*/

INSERT INTO `Друзья человека`.`Животные` (`id`, `Класс животных`) VALUES ('1', 'домашние'),('2', 'вьючные');

INSERT INTO `Друзья человека`.`Собаки` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`) VALUES
  ('Бадди', 'Сидеть, Стоять, Принеси', '2019-02-10', 1),
  ('Макс', 'Перевернись, Дай лапу', '2018-06-15', 1),
  ('Бейли', 'Притворись мертвым, Прыгай', '2020-01-05', 1),
  ('Чарли', 'Говори, Лови', '2017-09-20', 1),
  ('Луна', 'Голос, Крутись', '2016-12-08', 1);

INSERT INTO `Друзья человека`.`Кошки` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`) VALUES
  ('Оливер', 'Мурлыкать, Набрасываться', '2018-04-25', 1),
  ('Лео', 'Жених, Спать', '2019-07-10', 1),
  ('Мило', 'Лазать, Охотиться', '2020-03-17', 1),
  ('Лили', 'Тянуться, Преследовать', '2017-11-30', 1),
  ('Симба', 'Мяу, Играть', '2016-09-12', 1);

INSERT INTO `Друзья человека`.`Хомячки` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`) VALUES
  ('Коко', 'Бег по колесу', '2021-01-03', 1),
  ('Орешек', 'Прятать еду, Зарываться в нору', '2022-02-14', 1),
  ('Орео', 'Подъем по трубе', '2020-11-20', 1),
  ('Бисквит', 'Мешки в щеках, Копать', '2019-10-05', 1),
  ('Хейзел', 'Грызть, Исследовать', '2023-04-01', 1);

INSERT INTO `Друзья человека`.`Лошади` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`) VALUES
  ('Спирит', 'Галоп, Прыжок', '2015-08-20', 2),
  ('Дейзи', 'Рысь, Выпад', '2016-06-10', 2),
  ('Апполо', 'Выездка , Кантер', '2017-03-15', 2),
  ('Ива', 'Катание по тропе, Вольтижировка', '2018-11-25', 2),
  ('Рокки', 'Езда в западном стиле, Сдерживание', '2019-09-05', 2);

INSERT INTO `Друзья человека`.`Верблюды` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`) VALUES
  ('Сахара', 'Перевозка груза, Долго ходит', '2014-12-01', 2),
  ('Амир', 'Навигация по пустыне, Выносливость', '2015-10-18', 2),
  ('Зара', 'Вьючное седло, Верблюжьи бега', '2016-07-24', 2),
  ('Рая', 'Прогулка на верблюде, Производство молока', '2017-04-09', 2),
  ('Джамал', 'Хранение на горбе, Адаптация', '2018-02-15', 2);

INSERT INTO `Друзья человека`.`Ослы` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`) VALUES
  ('Джек', 'Переноска груза, Рев', '2019-08-12', 2),
  ('Джени', 'Выпас, Охрана', '2020-05-05', 2),
  ('Молли', 'Вспашка, Товарищ', '2021-02-20', 2),
  ('Оскар', 'Упрямство, Буксировка', '2022-09-10', 2),
  ('Рози', 'Обучение трюкам, Терапия', '2023-06-05', 2);

/*
10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой
питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу
*/

DROP TABLE `Друзья человека`.`Верблюды`;

DROP TABLE IF EXISTS `Лошади  и ослы`;
CREATE TABLE `Лошади  и ослы` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `Имя` VARCHAR(50) NOT NULL,
  `Команды` VARCHAR(100) NOT NULL,
  `Дата рождения` DATE NOT NULL,
  `Класс животных id` INT UNSIGNED NOT NULL,
  `Вид` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `Лошади  и ослы` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`, `Вид`)
SELECT `Имя`, `Команды`, `Дата рождения`, `Класс животных id`, 'Лошадь' AS `Вид`
FROM `Лошади`;

INSERT INTO `Лошади  и ослы` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`, `Вид`)
SELECT `Имя`, `Команды`, `Дата рождения`, `Класс животных id`, 'Ослик' AS `Вид`
FROM `Ослы`;

/*
11.Создать новую таблицу “молодые животные” в которую попадут все
животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью
до месяца подсчитать возраст животных в новой таблице
*/

DROP TABLE IF EXISTS `Молодые животные`;
CREATE TABLE `Молодые животные` (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Имя` VARCHAR(50) NOT NULL,
  `Вид` VARCHAR(20) NOT NULL,
  `Возраст в месяцах` INT NOT NULL
);


INSERT INTO `Молодые животные` (`Имя`, `Вид`, `Возраст в месяцах`)
SELECT `Имя`, 'Собака' AS `Вид`, TIMESTAMPDIFF(MONTH, `Дата рождения`, CURDATE()) AS `Возраст в месяцах`
FROM `Собаки`
WHERE `Дата рождения` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `Дата рождения` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `Молодые животные` (`Имя`, `Вид`, `Возраст в месяцах`)
SELECT `Имя`, 'Кошка' AS `Вид`, TIMESTAMPDIFF(MONTH, `Дата рождения`, CURDATE()) AS `Возраст в месяцах`
FROM `Кошки`
WHERE `Дата рождения` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `Дата рождения` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `Молодые животные` (`Имя`, `Вид`, `Возраст в месяцах`)
SELECT `Имя`, 'Ослик' AS `Вид`, TIMESTAMPDIFF(MONTH, `Дата рождения`, CURDATE()) AS `Возраст в месяцах`
FROM `Ослы`
WHERE `Дата рождения` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `Дата рождения` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `Молодые животные` (`Имя`, `Вид`, `Возраст в месяцах`)
SELECT `Имя`, 'Хомяк' AS `Вид`, TIMESTAMPDIFF(MONTH, `Дата рождения`, CURDATE()) AS `Возраст в месяцах`
FROM `Хомячки`
WHERE `Дата рождения` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `Дата рождения` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `Молодые животные` (`Имя`, `Вид`, `Возраст в месяцах`)
SELECT `Имя`, 'Лошадь' AS `Вид`, TIMESTAMPDIFF(MONTH, `Дата рождения`, CURDATE()) AS `Возраст в месяцах`
FROM `Лошади`
WHERE `Дата рождения` <= DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `Дата рождения` >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

/*
12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на
прошлую принадлежность к старым таблицам.
*/

DROP TABLE IF EXISTS `Все животные`;
CREATE TABLE `Все животные` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `Имя` VARCHAR(50) NOT NULL,
  `Команды` VARCHAR(100) NOT NULL,
  `Дата рождения` DATE NOT NULL,
  `Класс животных id` INT UNSIGNED NOT NULL,
  `Исходные таблицы` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `Все животные` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`, `Исходные таблицы`)
SELECT `Имя`, `Команды`, `Дата рождения`, `Класс животных id`, 'Собаки' AS `Исходные таблицы`
FROM `Собаки`;

INSERT INTO `Все животные` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`, `Исходные таблицы`)
SELECT `Имя`, `Команды`, `Дата рождения`, `Класс животных id`, 'Кошки' AS `Исходные таблицы`
FROM `Кошки`;

INSERT INTO `Все животные` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`, `Исходные таблицы`)
SELECT `Имя`, `Команды`, `Дата рождения`, `Класс животных id`, 'Ослы' AS `Исходные таблицы`
FROM `Ослы`;

INSERT INTO `Все животные` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`, `Исходные таблицы`)
SELECT `Имя`, `Команды`, `Дата рождения`, `Класс животных id`, 'Хомячки' AS `Исходные таблицы`
FROM `Хомячки`;

INSERT INTO `Все животные` (`Имя`, `Команды`, `Дата рождения`, `Класс животных id`, `Исходные таблицы`)
SELECT `Имя`, `Команды`, `Дата рождения`, `Класс животных id`, 'Лошади' AS `Исходные таблицы`
FROM `Лошади`;










