<?php

namespace app\controllers;

use app\models\extended\LkModel;
use app\models\Role;
use app\models\SearchRole;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * RoleController implements the CRUD actions for Role model.
 */
class LkController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all Role models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $model = $this->findModel(Yii::$app->user->identity->getId());

        if ($this->request->isPost)
        {
            $model->moneyInfo->save($this->request->post());
            return $this->redirect(['lk/index', 'id' => Yii::$app->user->identity->getId()]);
        }

        return $this->render('index', [
            'model' => $model
        ]);
    }

    /**
     * Finds the Role model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Role the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        $model = new LkModel();
        $model->fill($id);

        return $model;
    }
}
