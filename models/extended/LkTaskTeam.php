<?php

namespace app\models\extended;

use app\models\TeamUser;
use app\models\TaskUser;
use app\models\Task;

use Yii;

class LkTaskTeam extends \yii\base\Model
{
    public $teams; // командные работы сотрудника
    public $tasks; // проекты обучения сотрудника

    public function rules()
    {
        
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
    }

    public function fill($id)
    {
        $this->teams = TeamUser::find()->where(['user_id' => $id])->all();
        $tasks = TaskUser::find()->where(['user_id' => $id])->all();
        $tIds = [];
        foreach ($tasks as $task) $tIds[] = $task->task_id;
        $this->tasks = Task::find()->where(['IN', 'id', $tIds])->all();
    }
}
