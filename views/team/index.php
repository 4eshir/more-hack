<?php

use app\models\Team;
use app\models\User;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\SearchTeam $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Командные задачи';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="team-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?php
        $user = User::find()->where(['id' => Yii::$app->user->identity->getId()])->one();
        if ($user->role_id == 2) {
        ?>
            <?= Html::a('Создать задачу', ['create'], ['class' => 'btn btn-success']) ?>
        <?php } ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'name',
            'user_creator_id',
            'currency_id',
            'max_count',
            //'summary_cost',
            //'status_id',
            //'date_start',
            //'date_finish',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, Team $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                 }
            ],
        ],
    ]); ?>


</div>
