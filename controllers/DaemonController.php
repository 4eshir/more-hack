<?php

namespace app\controllers;

use app\models\CurrencyWallet;
use app\models\UserSalary;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\User;
use app\models\ContactForm;

class DaemonController extends Controller
{
    public function actionAchievmentCheck()
    {
        $users = User::find()->where(['!=', 'user.role_id', 4])->all();

        foreach ($users as $user)
            $user->checkAchievment();
    }

    public function actionSalaryUsers()
    {
        $usersSalary = UserSalary::find()->joinWith(['user user'])->where(['!=', 'user.role_id', 4])->all();

        foreach ($usersSalary as $user)
        {
            $currencyWallet = CurrencyWallet::find()->joinWith(['wallet wallet'])
                ->where(['wallet.user_id' => $user->user_id])->andWhere(['wallet.type_id' => $user->wallet_type_id])
                ->andWhere(['currency_id' => $user->currency_id])->one();
            $currencyWallet->count += $user->salary;
            $currencyWallet->save();
        }
    }
}
