<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\EmpresaModel */

$this->title = Yii::t('app', 'Update Empresa Model: {name}', [
    'name' => $model->idEmpresa,
]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Empresa Models'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->idEmpresa, 'url' => ['view', 'id' => $model->idEmpresa]];
$this->params['breadcrumbs'][] = Yii::t('app', 'Update');
?>
<div class="empresa-model-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
