MORE.Tech 4.0 — онлайн-хакатона ВТБ
Команда Oompa-Loompas. 
Участники: Калашник Глеб Алексеевич и Курина Дарья Павловна.
WEB-трек.

Тестовая среда, для проверки работоспособности системы: more.tech.schooltech.ru
Дамп БД системы расположен в файле: u0457336_moretech.sql

Первый вход в систему осуществляет администратор (логин: , пароль: ). 
В его функционал входит: 
1) создание/редактирование/удаление пользователей, при этом для пользователя может генерироваться один или сразу два кошелька - личный и виртуальный.
Для сотрудника происходит создание только личного кошелька, в то время как для руководителя и hr, которые организуют задачи и командные работы, происходит создание двух кошельков.
Дело в том, что виртуальный кошелек предназначен только для выплат по заданиям, в то время как личный - предназначен для взаимодействия с маркетплейсом и обменом nft и digital rubles между коллегами.
Администратор лишён личного кошелька, для уменьшения "режима бога".
2) создание/редактирование своих/удаление товаров на маркетплейсе. Любой пользователь может разместить товар на площадке маркетплейчса, редактирование товара доступно только его создателю.
Однако возникают моменты, когда когда товар не соответсвует политике организации, в таком случае - администратор может оперативно его удалить.
После того, как покупатель нажал кнопку "купить", его деньги замораживаются и будут перечислены продавцу только в том случае, если он подтвердил факт передачи товара. 
Существует возможность отмены покупки в любой из моментов сделки до её подтверждения. После подтверждения - продавцу поступают nft/rubles на личный кошелек.
Администратор лишен возможности покупки товаров. Только продажа.
3) просмотр рейтинга сотрудников.
4) доступ в личный кабинет. В личном кабинете находится информация о пользователе (логин, ФИО, уровень, очки опыта, информация о кошельке и хранимой валюте, достижения), 
а также о задачах и команде (в виде активных ссылок), в которых участвует или участвовал пользователь, о покупаемых и выставляемых товарах (с указанием ожидания пополнения,
ожиданием подтверждения покупки и активности продажи), об истории и переводах (с данной страницы можно перевести nft или rubles коллеге в рамках личных кошельков), отправка сообщенний в чаты

Путь администратора:
1) создать 3 пользователей системы с разными ролями (сотрудник, руководитель, hr)
2) начислить созданным пользователя nft и rubles
3) создать 2 товара на маркетплейсе с разной стоимостью и в разной валюте
4) отправить сообщения в чаты новым сотрудникам
5) подтвердить или отменить покупку пользователя, когда он её совершит.

В функционал руководителя входит: 
1) создание/редактирование/удаление командных задач. Для командной задачи необходимо установить дату начала и окончания командной работы, внести сумму вознаграждений для участников и указать
их максимальный состав. Запись в команду можно закрыть даже при невыполнения условий количества участников и даты начала работы. Руководитель может являться членом команды, однако это не обязательное условие.
После завершения командной задачи (и в процессе её выполнения) можно выплатить часть вознаграждения сотрудникам. При этом количество и суммы выплат не регламентированы (однако не более зарезервированной суммы).
Списание выплат происходит с виртуального кошелька руководителя на личные кошельки участников командной задачи.
2) возможность прохождения проектов обучения.
4) создание/редактирование своих/удаление своих товаров на маркетплейсе.
5) просмотр рейтинга сотрудников.
6) доступ в личный кабинет.
7) отправка сообщенний в чаты.
8) покупка товаров на маркетплейсе.

Путь руководителя: 
1) создать 3 командные задачи с разными сроками исполнения и разными валютами.
2) вступить в одну из команд в качестве участника.
3) закрыть запись в команду в одной из задач.
4) купить товар на маркетплесе.
5) выставить свой товар на маркетплейсе.
6) пройти проект обучения.
7) в личном кабинете увидеть свои достижения (первый появится при 1 продаже выставленного товара), уровень и данные кошелька, а также актуальные и завершенные задачи и команды, купленные и проданные товары, историю
проводимых транзакций
8) прочитать и ответить на сообщение в чате
9) перевести коллеге несколько nft или rubles
10) выплатить часть вознаграждения коллегам за командную работу (после добавления участников в команду).
11) оценить свои достижения в таблице лидеров

В функциона hr входит:
1) создание/редактирование/удаление проектов обучения. При этом проекты могут быть повторяющимися и выполнимыми только один раз для конкретного пользователя. Для проекта обучения необходимо установить валюту и сумму
вознагражения за выполнение (данная сумма будет списана с виртуального кошелька после подтверждения выполнения проекта обучения). Пользователю необходимо выбрать проек обучения и отправить на проверку его выполнение,
а hr необходимо подтвердить корректность или правдивость данных. После этого вознагражение будет автоматически перечислено сотруднику. HR также может участвовать в проектах обучения.
2) возможность участия в командных задачах.
3) возможность покупки и продажи товаров на маркетплейсе.
4) доступ в личный кабинет.
5) отправка сообщений в чаты.
6) просмотр рейтинга коллег.

Путь hr:
1) открыть личны кабинет. Прочитать и отправить сообщение в чате.
2) создать проект обучения.
3) купить товар на маркетплейсе
4) поставить товар на продажу на маркетплейсе
5) просмотреть рейтинг коллег
6) потвердить выполнение проекта обучения после того как сотрудник отправит его на проверку
7) открыть личный кабинет и перейти по активным ссылкам в проекты обучения/по товарам или просмотреть транзакцию переводов
8) подтвердить продажу товара, когда пользователь решит его купить

В функционал сотрудника входит:
1) просмотр таблицы лидеров
2) возможность участия в командных задачах
3) возможность участия в проектах обучения
4) купить товар на маркетплейсе
5) выставить на продажу товар на маркетплейсе
6) доступ в личный кабинет
7) доступ к чатам


Доступ (логины и пароли)
1. Администратор
   Login: New
   Password: 111111

2. HR
   Login: Ivan
   Password: 111111

3. Руководитель
   Login: Petr
   Password: 111111

4. Сотрудник
   Login: Sidor
   Password: 111111