<?php

/** @var yii\web\View $this */

$this->title = 'My Yii Application';
?>

<style>

    main {
        background: linear-gradient(132deg, #FC415A, #591BC5, #212335);
        background-size: 400% 400%;
        animation: Gradient 15s ease infinite;
        position: relative;
        height: 100vh;
        /*width: 200%;*/
        overflow: hidden;
        padding:0;
        margin:0px;
    }
    .cube {
        position: absolute;
        top: 80vh;
        left: 45vw;
        width: 10px;
        height: 10px;
        border: solid 1px #D7D4E4;
        transform-origin: top left;
        transform: scale(0) rotate(0deg) translate(-50%, -50%);
        animation: cube 12s ease-in forwards infinite;
    }
    .cube:nth-child(2n) {
        border-color: #FFF ;
    }
    .cube:nth-child(2) {
        animation-delay: 2s;
        left: 25vw;
        top: 40vh;
    }
    .cube:nth-child(3) {
        animation-delay: 4s;
        left: 75vw;
        top: 50vh;
    }
    .cube:nth-child(4) {
        animation-delay: 6s;
        left: 90vw;
        top: 10vh;
    }
    .cube:nth-child(5) {
        animation-delay: 8s;
        left: 10vw;
        top: 85vh;
    }
    .cube:nth-child(6) {
        animation-delay: 10s;
        left: 50vw;
        top: 10vh;
    }

    @keyframes Gradient {
        0% {
            background-position: 0% 50%;
        }
        50% {
            background-position: 100% 50%;
        }
        100% {
            background-position: 0% 50%;
        }
    }
    @keyframes cube {
        from {
            transform: scale(0) rotate(0deg) translate(-50%, -50%);
            opacity: 1;
        }
        to {
            transform: scale(20) rotate(960deg) translate(-50%, -50%);
            opacity: 0;
        }
    }


    .navbar-brand {
        margin-left: 15%;
    }

    .semilayer {
        padding: 5px;
        background: #F5F5DC;
        width: 90%;
        opacity: 0.5;
        position: absolute;
        height: 375px;
        top: 30%;
        color: black;
        font-size: 20px;
        font-weight: 700;
    }
</style>

<div class="site-index background">
<!--    <div class="background">-->
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
<!--    </div>-->
    <div class="semilayer">
        <?php
            $user = \app\models\User::find()->where(['id' => Yii::$app->user->identity->getId()])->one();

           echo 'Здравствуй '. $user->username.', ты находишься во внутрикорпоративной системе ВТБ. 
<br>Великий Администратор выдал тебе роль «'.$user->role->name.'». Тебе доступно:
<br>❑ Прохождение образовательных заданий;
<br>❑ Участие в корпоративных проектах;
<br>❑ Покупка на маркетплейсе;
<br>❑ Продажа на маркетплейсе;
<br>❑ Перевод nft и монет коллегам;
<br>❑ Просмотр истории;
<br>❑ Вывод валюты в цифровые рубли банка России.
<br>А также возможность получить специальные достижения, ведь каждое действие в системе даёт очки опыта. 
<br>Соревнуйтесь с коллегами за первые места в рейтинге и получайте удовольствие!';
        ?>
    </div>
<!--<div class="container-fluid">

</div>-->

</div>
