-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 08 2022 г., 23:42
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u0457336_moretech`
--

-- --------------------------------------------------------

--
-- Структура таблицы `achievment`
--

CREATE TABLE `achievment` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL,
  `picture` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `achievment`
--

INSERT INTO `achievment` (`id`, `name`, `description`, `count`, `picture`, `level_id`) VALUES
(1, 'Ученик', 'Пройти любой проект обучения', 20, 'https://i.gifer.com/MbWC.gif', NULL),
(2, 'Исследователь', 'Принять участие в одной командной работе', 20, 'https://i.gifer.com/oY.gif', NULL),
(3, 'Впариватель', 'Выставить на продажу одну вещь', 20, 'https://i.gifer.com/ADpt.gif', NULL),
(4, 'Наставник', 'Завершить одну созданную командную активность', 20, 'https://i.gifer.com/1FSX.gif', NULL),
(5, 'Зачинщик', 'Создать один курс обучения и обучить по нему', 20, 'https://i.gifer.com/EhJf.gif', NULL),
(6, 'Студент', 'Пройти пять проектов обучения', 50, 'https://i.gifer.com/U7xe.gif', NULL),
(7, 'Специалист', 'Принять участие в пяти командных работах', 50, 'https://i.gifer.com/IyLH.gif', NULL),
(8, 'Работник прилавка', 'Выставить на продажу пять товаров', 50, 'https://i.gifer.com/Lnac.gif', NULL),
(9, 'Вождь', 'Завершить 10 созданных командных активностей', 50, 'https://i.gifer.com/9TlX.gif', NULL),
(10, 'Подстрекатель', 'Создать 10 разных курсов обучения и обучить по ним', 50, 'https://i.gifer.com/T757.gif', NULL),
(11, 'Профессор', 'Пройти десять проектов обучения', 100, 'https://i.gifer.com/1cE.gif', NULL),
(12, 'Душа команды', 'Принять участие в десяти командных работах', 100, 'https://i.gifer.com/7xoM.gif', NULL),
(13, 'Торговая интелигенция', 'Выставить на продажу десять товаров', 100, 'https://i.gifer.com/QQdA.gif', NULL),
(14, 'Прошёл огонь, воду и медные трубы', 'Собрать все достижения', 100, 'https://i.gifer.com/5Aqf.gif', NULL),
(15, 'Нищий', 'Потратить все валюты до нуля', 0, 'https://i.gifer.com/7Aiy.gif', NULL),
(16, 'Богач', 'Накопить 1000 NFT-сертификатов и монет (суммарно)', 50, 'https://i.gifer.com/18Pe.gif', NULL),
(17, 'Добрый самаритянин', 'Перевести коллегам 500 NFT-сертификатов/монет (суммарно)', 30, 'https://i.gifer.com/uC4.gif', NULL),
(18, 'Транжира', 'Потратить на маркетплейсе 1000+ NFT-сертификатов и монет (суммарно)', 25, 'https://i.gifer.com/CQRy.gif', NULL),
(19, 'Отчаянный ход', 'Попытаться купить товар, на который не хвататет средств', 10, 'https://i.gifer.com/7cmx.gif', NULL),
(20, 'Самая быстрая рука в ВТБ', 'Купить последний товар на маркетплейсе', 10, 'https://i.gifer.com/1HHU.gif', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `achievment_user`
--

CREATE TABLE `achievment_user` (
  `id` int(11) NOT NULL,
  `achievment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `achievment_user`
--

INSERT INTO `achievment_user` (`id`, `achievment_id`, `user_id`) VALUES
(1, 1, 12),
(2, 19, 12),
(3, 20, 12),
(4, 14, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `user_out_id` int(11) NOT NULL,
  `user_in_id` int(11) NOT NULL,
  `text` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `user_out_id`, `user_in_id`, `text`, `datetime`) VALUES
(1, 13, 12, 'Привет', '2022-10-01 23:58:32'),
(2, 14, 13, 'Привет еще раз', '2022-10-02 23:58:32'),
(3, 13, 14, 'упауцкцкикику', '2022-10-08 11:33:33');

-- --------------------------------------------------------

--
-- Структура таблицы `confirm`
--

CREATE TABLE `confirm` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `confirm`
--

INSERT INTO `confirm` (`id`, `name`) VALUES
(1, 'Оплачено'),
(2, 'Получено'),
(3, 'Отменено'),
(4, 'Отклонено');

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `name`) VALUES
(1, 'NFT-сертификат'),
(2, 'Digital Ruble');

-- --------------------------------------------------------

--
-- Структура таблицы `currency_wallet`
--

CREATE TABLE `currency_wallet` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `currency_wallet`
--

INSERT INTO `currency_wallet` (`id`, `wallet_id`, `currency_id`, `count`) VALUES
(39, 22, 1, 0),
(40, 22, 2, 14),
(43, 24, 1, 0),
(44, 24, 2, 0),
(45, 25, 1, 0),
(46, 25, 2, 0),
(47, 26, 1, 0),
(48, 26, 2, 10),
(49, 27, 1, 0),
(50, 27, 2, 0),
(51, 28, 1, 2),
(52, 28, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `activity_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `history_wallet`
--

CREATE TABLE `history_wallet` (
  `id` int(11) NOT NULL,
  `currency_wallet_out_id` int(11) DEFAULT NULL,
  `currency_wallet_in_id` int(11) DEFAULT NULL,
  `operation_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `history_wallet`
--

INSERT INTO `history_wallet` (`id`, `currency_wallet_out_id`, `currency_wallet_in_id`, `operation_id`, `count`, `date_time`, `team_id`, `task_id`) VALUES
(75, NULL, 40, 6, 10, '2022-10-08 09:02:04', NULL, NULL),
(76, NULL, 48, 6, 3, '2022-10-08 09:05:19', NULL, NULL),
(77, 48, 44, 2, 1, '2022-10-08 09:12:09', NULL, NULL),
(78, 48, 44, 2, 1, '2022-10-08 09:15:12', NULL, NULL),
(79, NULL, 48, 6, 5, '2022-10-08 09:16:22', NULL, NULL),
(80, NULL, 48, 6, 5, '2022-10-08 09:17:21', NULL, NULL),
(81, NULL, 51, 6, 2, '2022-10-08 09:25:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `experience_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `operation`
--

INSERT INTO `operation` (`id`, `name`) VALUES
(1, 'Обмен NFT-сертификатов/монет на цифровые рубли'),
(2, 'Перевод NFT-сертификатов/монет'),
(3, 'Покупка товара на маркетплейсе'),
(4, 'Выплата за командную работу'),
(5, 'Выплата за проект'),
(6, 'Другие операции');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `user_creator_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product_user`
--

CREATE TABLE `product_user` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `confirm_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Администратор'),
(2, 'Руководитель'),
(3, 'HR'),
(4, 'Сотрудник');

-- --------------------------------------------------------

--
-- Структура таблицы `role_function`
--

CREATE TABLE `role_function` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_function`
--

INSERT INTO `role_function` (`id`, `name`) VALUES
(1, 'Просмотр маркетплейса'),
(2, 'Редактирование маркетплейса'),
(3, 'Доступ к пополнению виртуального кошелька'),
(4, 'Доступ к пополнению личного кошелька'),
(5, 'Доступ к обмену NFT-сертификатов/монет на товары маркетплейса/цифровые рубли Банка России'),
(6, 'Добавление и редактирование достижений/количества очков опыта'),
(7, 'Доступ к переводу NFT-сертификатов/монет коллеге'),
(8, 'Просмотр начисления/списания своих и коллег своего уровня NFT-сертификатов/монет'),
(9, 'Просмотр начисления/списания NFT-сертификатов/монет всех сотрудников'),
(11, 'Выставление своего товара на маркетплейсе'),
(12, 'Создание заявки на обмен NFT-сертифкатов/монет на цифровые рубли или товары маркетплейса'),
(13, 'Создание и редактирование проекта обучения'),
(14, 'Подтверждение выполненного проекта'),
(15, 'Создание и редактирование командной задачи'),
(16, 'Начисление NFT-сертификатов/монет за командные задачи');

-- --------------------------------------------------------

--
-- Структура таблицы `role_function_role`
--

CREATE TABLE `role_function_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_function_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_function_role`
--

INSERT INTO `role_function_role` (`id`, `role_id`, `role_function_id`) VALUES
(7, 4, 7),
(8, 4, 8),
(9, 4, 11),
(10, 4, 12),
(11, 2, 7),
(12, 2, 8),
(13, 2, 11),
(14, 2, 12),
(15, 3, 7),
(16, 3, 8),
(17, 3, 11),
(18, 3, 12),
(19, 3, 13),
(20, 3, 14),
(21, 2, 15),
(22, 2, 16),
(60, 1, 1),
(61, 1, 2),
(62, 1, 3),
(63, 1, 4),
(64, 1, 5),
(65, 1, 6),
(66, 1, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Активна'),
(2, 'Неактивна');

-- --------------------------------------------------------

--
-- Структура таблицы `status_product`
--

CREATE TABLE `status_product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `status_product`
--

INSERT INTO `status_product` (`id`, `name`) VALUES
(1, 'Доступен'),
(2, 'Недоступен');

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `repeat` tinyint(1) NOT NULL,
  `user_creator_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_finish` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `name`, `currency_id`, `price`, `repeat`, `user_creator_id`, `status_id`, `date_start`, `date_finish`) VALUES
(2, 'Курсы повышения квалификации', 2, 10, 0, 14, 1, '2022-10-01 00:00:00', '2022-10-31 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `task_user`
--

CREATE TABLE `task_user` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task_user`
--

INSERT INTO `task_user` (`id`, `task_id`, `user_id`, `date`) VALUES
(33, 2, 13, '2022-10-08');

-- --------------------------------------------------------

--
-- Структура таблицы `task_user_confirm`
--

CREATE TABLE `task_user_confirm` (
  `id` int(11) NOT NULL,
  `user_hr_id` int(11) NOT NULL,
  `task_user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `confirm` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task_user_confirm`
--

INSERT INTO `task_user_confirm` (`id`, `user_hr_id`, `task_user_id`, `date`, `confirm`) VALUES
(42, 14, 33, '2022-10-08', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_creator_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `max_count` int(11) NOT NULL,
  `summary_cost` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_finish` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `team_user`
--

CREATE TABLE `team_user` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `type_wallet`
--

CREATE TABLE `type_wallet` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `type_wallet`
--

INSERT INTO `type_wallet` (`id`, `name`) VALUES
(1, 'Личный'),
(2, 'Виртуальный');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `firstname` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondname` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `experience_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `firstname`, `secondname`, `patronymic`, `role_id`, `experience_count`) VALUES
(12, 'New', 'Fn-1o__wOrp0HA1APHcgln77PpLp97IF', '$2y$13$LB4jNE.x61wmmZ3lAyOlHunUdf3YneVzX2rxpAyclIKTWxNElLKB.', NULL, NULL, 10, NULL, NULL, 'New', 'New', 'New', 1, 130),
(13, 'Petr', '2lmxpGXxMSEcYvND68mj2RWlPF9oeblO', '$2y$13$zKGd/5PxS.wCl8KEJrGbMe74EP36J86SJZe.pBdd8AweBdQt.o1zK', NULL, NULL, 10, NULL, NULL, 'Петр', 'Петров', 'Петрович', 2, 0),
(14, 'Ivan', '8-TVMPJlzz7RGDxD1qkb4e4cgWZNwlun', '$2y$13$vY/UxCMMY1MUi/eWbF0qAO65o31M5X7A2HqPvHdmbHrNLJY4k9Fzu', NULL, NULL, 10, NULL, NULL, 'Иван', 'Иванов', 'Иванович', 3, 20),
(15, 'Sidor', 'L9VUTXTDHRF3BQdMtlIlbtxqmb1kopN6', '$2y$13$M.aLB7Fvc5FXl98GTAbOeOIKND8aJBuPTRvM881.ukvLeoYKGBJE.', NULL, NULL, 10, NULL, NULL, 'Сидор', 'Сидоров', 'Сидорович', 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user_salary`
--

CREATE TABLE `user_salary` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `wallet_type_id` int(11) NOT NULL,
  `salary` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_salary`
--

INSERT INTO `user_salary` (`id`, `user_id`, `currency_id`, `wallet_type_id`, `salary`) VALUES
(17, 13, 1, 1, NULL),
(18, 13, 2, 1, NULL),
(19, 13, 1, 2, NULL),
(20, 13, 2, 2, NULL),
(21, 14, 1, 1, NULL),
(22, 14, 2, 1, NULL),
(23, 14, 1, 2, NULL),
(24, 14, 2, 2, NULL),
(25, 15, 1, 1, NULL),
(26, 15, 2, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `publicKey` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privateKey` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wallet`
--

INSERT INTO `wallet` (`id`, `type_id`, `user_id`, `publicKey`, `privateKey`) VALUES
(22, 1, 12, '0x8be07Ca31624a6642d0ab53A1eCAcAd3dee957fB', 'e24760570cd0e28a306c8201766e22633dcd9e19c7fff2f2571aec74982db9b9'),
(24, 1, 13, '0x5Cb7Ba6a980c8794EE04031F24fAdE071B2b175E', '6a3f0a602d3aeb3e561cde2b77d4fe695066b414e541978a489ea1b8954cc02a'),
(25, 2, 13, '0x07200D8CFb1E87CDa701143CFd34905851C68686', '7a6a7c3722a95839616f84066873bb63aa1b17190793cb89c45ece6c99bcf651'),
(26, 1, 14, '0x4029EDD990ec4247f8db11eB5068f0bF6fC8787e', '3bc012016cb5bab1481443a580fba09071ed7155063c3e0e75a414036198947b'),
(27, 2, 14, '0xdC11eFd292A9E2A06467Ba47eea615f40573dcED', '32559004c074ca42190d24f8d4dd4de8a922669984a51ed2662808aa210e7b79'),
(28, 1, 15, '0x3A22E6C5b7654fed6167122FCd84EC3fa48329F5', '9631fe08a6cf01125a6e5a3306344acdd0bbe697f7f2c431f0e9c30aa49a008c');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `achievment`
--
ALTER TABLE `achievment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_id` (`level_id`);

--
-- Индексы таблицы `achievment_user`
--
ALTER TABLE `achievment_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `achievment_id` (`achievment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_in_id` (`user_in_id`),
  ADD KEY `user_out_id` (`user_out_id`);

--
-- Индексы таблицы `confirm`
--
ALTER TABLE `confirm`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currency_wallet`
--
ALTER TABLE `currency_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `history_wallet`
--
ALTER TABLE `history_wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_wallet_in_id` (`currency_wallet_in_id`),
  ADD KEY `currency_wallet_out_id` (`currency_wallet_out_id`),
  ADD KEY `operation_id` (`operation_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Индексы таблицы `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `user_creator_id` (`user_creator_id`);

--
-- Индексы таблицы `product_user`
--
ALTER TABLE `product_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_function`
--
ALTER TABLE `role_function`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_function_role`
--
ALTER TABLE `role_function_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_function_id` (`role_function_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status_product`
--
ALTER TABLE `status_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `user_creator_id` (`user_creator_id`);

--
-- Индексы таблицы `task_user`
--
ALTER TABLE `task_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `task_user_confirm`
--
ALTER TABLE `task_user_confirm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_user_id` (`task_user_id`),
  ADD KEY `user_hr_id` (`user_hr_id`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `user_creator_id` (`user_creator_id`);

--
-- Индексы таблицы `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `type_wallet`
--
ALTER TABLE `type_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `username` (`username`),
  ADD KEY `password_reset_token` (`password_reset_token`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `user_salary`
--
ALTER TABLE `user_salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_id` (`currency_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_salary_ibfk_3` (`wallet_type_id`);

--
-- Индексы таблицы `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `achievment`
--
ALTER TABLE `achievment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `achievment_user`
--
ALTER TABLE `achievment_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `confirm`
--
ALTER TABLE `confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `currency_wallet`
--
ALTER TABLE `currency_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `history_wallet`
--
ALTER TABLE `history_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `product_user`
--
ALTER TABLE `product_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `role_function`
--
ALTER TABLE `role_function`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `role_function_role`
--
ALTER TABLE `role_function_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `status_product`
--
ALTER TABLE `status_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `task_user`
--
ALTER TABLE `task_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `task_user_confirm`
--
ALTER TABLE `task_user_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `type_wallet`
--
ALTER TABLE `type_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `user_salary`
--
ALTER TABLE `user_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `achievment`
--
ALTER TABLE `achievment`
  ADD CONSTRAINT `achievment_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`);

--
-- Ограничения внешнего ключа таблицы `achievment_user`
--
ALTER TABLE `achievment_user`
  ADD CONSTRAINT `achievment_user_ibfk_1` FOREIGN KEY (`achievment_id`) REFERENCES `achievment` (`id`),
  ADD CONSTRAINT `achievment_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`user_in_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`user_out_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `history_wallet`
--
ALTER TABLE `history_wallet`
  ADD CONSTRAINT `history_wallet_ibfk_1` FOREIGN KEY (`currency_wallet_in_id`) REFERENCES `currency_wallet` (`id`),
  ADD CONSTRAINT `history_wallet_ibfk_2` FOREIGN KEY (`currency_wallet_out_id`) REFERENCES `currency_wallet` (`id`),
  ADD CONSTRAINT `history_wallet_ibfk_3` FOREIGN KEY (`operation_id`) REFERENCES `operation` (`id`),
  ADD CONSTRAINT `history_wallet_ibfk_4` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  ADD CONSTRAINT `history_wallet_ibfk_5` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status_product` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`user_creator_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `product_user`
--
ALTER TABLE `product_user`
  ADD CONSTRAINT `product_user_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `role_function_role`
--
ALTER TABLE `role_function_role`
  ADD CONSTRAINT `role_function_role_ibfk_1` FOREIGN KEY (`role_function_id`) REFERENCES `role_function` (`id`),
  ADD CONSTRAINT `role_function_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Ограничения внешнего ключа таблицы `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `task_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `task_ibfk_3` FOREIGN KEY (`user_creator_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `task_user`
--
ALTER TABLE `task_user`
  ADD CONSTRAINT `task_user_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  ADD CONSTRAINT `task_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `task_user_confirm`
--
ALTER TABLE `task_user_confirm`
  ADD CONSTRAINT `task_user_confirm_ibfk_1` FOREIGN KEY (`task_user_id`) REFERENCES `task_user` (`id`),
  ADD CONSTRAINT `task_user_confirm_ibfk_2` FOREIGN KEY (`user_hr_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `team_ibfk_3` FOREIGN KEY (`user_creator_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `team_user`
--
ALTER TABLE `team_user`
  ADD CONSTRAINT `team_user_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `team_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_salary`
--
ALTER TABLE `user_salary`
  ADD CONSTRAINT `user_salary_ibfk_1` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `user_salary_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_salary_ibfk_3` FOREIGN KEY (`wallet_type_id`) REFERENCES `type_wallet` (`id`);

--
-- Ограничения внешнего ключа таблицы `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_wallet` (`id`),
  ADD CONSTRAINT `wallet_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
