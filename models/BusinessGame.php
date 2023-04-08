<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "business_game".
 *
 * @property int $id
 * @property string $start_date
 * @property string $end_date
 * @property int $type_participation_id
 * @property string $name
 * @property string $description
 * @property int $role_participant_id
 * @property int $type_participant_id
 * @property string $target
 * @property int $count_participant
 *
 * @property Step[] $steps
 */
class BusinessGame extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'business_game';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['start_date', 'end_date', 'type_participation_id', 'name', 'description', 'role_participant_id', 'type_participant_id', 'target', 'count_participant'], 'required'],
            [['start_date', 'end_date'], 'safe'],
            [['type_participation_id', 'role_participant_id', 'type_participant_id', 'count_participant'], 'integer'],
            [['name', 'description', 'target'], 'string', 'max' => 1000],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'start_date' => 'Start Date',
            'end_date' => 'End Date',
            'type_participation_id' => 'Type Participation ID',
            'name' => 'Name',
            'description' => 'Description',
            'role_participant_id' => 'Role Participant ID',
            'type_participant_id' => 'Type Participant ID',
            'target' => 'Target',
            'count_participant' => 'Count Participant',
        ];
    }

    /**
     * Gets query for [[Steps]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSteps()
    {
        return $this->hasMany(Step::class, ['business_game_id' => 'id']);
    }
}
