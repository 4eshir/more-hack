<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "business_game".
 *
 * @property int $id
 * @property string $start_date
 * @property string $end_date
 * @property int $price
 * @property int $creator_id
 *
 * @property User $creator
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
            [['start_date', 'end_date', 'price', 'creator_id'], 'required'],
            [['start_date', 'end_date'], 'safe'],
            [['price', 'creator_id'], 'integer'],
            [['creator_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['creator_id' => 'id']],
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
            'price' => 'Price',
            'creator_id' => 'Creator ID',
        ];
    }

    /**
     * Gets query for [[Creator]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCreator()
    {
        return $this->hasOne(User::class, ['id' => 'creator_id']);
    }
}
