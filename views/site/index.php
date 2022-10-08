<?php

/** @var yii\web\View $this */

$this->title = 'My Yii Application';
?>

<style>
/*    body {
        font-family: 'Josefin Sans', sans-serif;
        box-sizing: border-box;
    }
    .container-fluid{
        height: 100%;
        margin: 0;
        padding: 0;
        width: 100%;
        background: #FFF;
    }
    !* ============= Animation background ========= *!*/
    .background {
        background: linear-gradient(132deg, #FC415A, #591BC5, #212335);
        background-size: 400% 400%;
        animation: Gradient 15s ease infinite;
        position: relative;
        height: 100vh;
        width: 200%;
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
    /* ================= Header ============ */

/*    !* Header content & title & button*!
    .content{
        margin-top:25%;
        text-align: center;
        color:  #EFEEF5;
    }
    h1{
        text-transform: uppercase;
        font-size: 3em;
        letter-spacing: 1px;
    }
    p {
        font-size: 20px;
        line-height: 1.5;
        margin: 20px auto;
    }*/

    /* Animate Background*/
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
/*
    .fixed-top {
        width: 100%;
        margin: 0 auto;
    }*/

    main > .container {
        padding: 0;
        margin: 0;
    }

    .navbar-brand {
        margin-left: 15%;
    }

    .footer {
        background-color: #343a40;
        width: 100%;
    }

    .semilayer {
        padding: 5px;
        background: #F5F5DC;
        width: 80%;
        opacity: 0.5;
        position: absolute;
        height: 274px;
        top: 30%;
        margin-left: 30%;
    }
</style>

<div class="site-index">
    <div class="background">
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
        <div class="cube"></div>
    </div>
    <div class="semilayer">
        <?php
            
        ?>
    </div>
<!--<div class="container-fluid">

</div>-->

</div>
