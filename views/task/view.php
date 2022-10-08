<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/** @var yii\web\View $this */
/** @var app\models\Task $model */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Проекты обучения', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="task-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Редактировать', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Удалить', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
        <?php 

        $joins = app\models\TaskUser::find()->where(['user_id' => Yii::$app->user->identity->getId()])->andWhere(['task_id' => $model->id])->orderBy(['id' => SORT_DESC])->all();
        $complete = app\models\TaskUserConfirm::find()->joinWith(['taskUser taskUser'])->where(['taskUser.task_id' => $model->id])->andWhere(['taskUser.user_id' => Yii::$app->user->identity->getId()])->all();
        $f_check = true;
        foreach ($complete as $one)
            if ($one->confirm == false)
                $f_check = false;


        if (count($joins) == 0 || count($complete) == count($joins) && $f_check)
            echo Html::a('Взять задачу на выполнение', ['join', 'id' => $model->id], ['class' => 'btn btn-success']);
        else if ((count($complete) == 0 || count($complete) < count($joins)) && $f_check)
        {
            echo Html::a('Отказаться от выполнения', ['quit', 'id' => $model->id], ['class' => 'btn btn-warning']);
            echo Html::a('Сдать выполненное задание', ['complete', 'id' => $model->id], ['class' => 'btn btn-success', 'style' => 'margin-left: 5px']);
        }
        else if (!$f_check)
        {
            echo Html::a('Отказаться от выполнения', ['quit', 'id' => $model->id], ['class' => 'btn btn-warning']);
        }
        else if ($model->repeat == 1)
            echo Html::a('Взять задачу на выполнение', ['join', 'id' => $model->id], ['class' => 'btn btn-success']);
        else
            echo '<span style="color: red; margin-left: 10px">Вы уже выполнили это задание</span>';


        ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
            'currency_id',
            'price',
            'repeat',
            'user_creator_id',
            'status_id',
            'date_start',
            'date_finish',
        ],
    ]) ?>

    <?php

    $join = app\models\TaskUser::find()->where(['task_id' => $model->id])->all();
    if (count($join) > 0)
    {
        echo '<h5><u>Выполняют задание</u></h5>';
        echo DetailView::widget([
            'model' => $model,
            'attributes' => [
                ['attribute' => 'joiners', 'format' => 'raw'],
            ],
        ]);
    }

    ?>



    <?php

    $join = app\models\TaskUserConfirm::find()->joinWith(['taskUser taskUser'])->where(['taskUser.task_id' => $model->id])->all();
    if (count($join) > 0)
    {
        echo '<h5><u>Выполнили задание</u></h5>';
        echo DetailView::widget([
            'model' => $model,
            'attributes' => [
                ['attribute' => 'completed', 'format' => 'raw'],
            ],
        ]);
    }

    ?>

</div>
