<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\BusinessGame $model */

$this->title = 'Редактировать деловую игру: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Business Games', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="business-game-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
