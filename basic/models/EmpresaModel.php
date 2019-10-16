<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "empresa".
 *
 * @property int $idEmpresa
 * @property string $titulo
 * @property string $telefone
 * @property string $endereco
 * @property string $cep
 * @property string $cidade
 * @property string $estado
 * @property string $descricao
 * @property string $categoria
 *
 * @property EmpresaCategoria[] $empresaCategorias
 */
class EmpresaModel extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'empresa';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['titulo', 'telefone', 'endereco', 'cep', 'cidade', 'estado', 'descricao', 'categoria'], 'required'],
            [['categoria'], 'string'],
            [['titulo', 'endereco'], 'string', 'max' => 100],
            [['telefone'], 'string', 'max' => 20],
            [['cep'], 'string', 'max' => 15],
            [['cidade', 'estado'], 'string', 'max' => 50],
            [['descricao'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'idEmpresa' => Yii::t('app', 'Id Empresa'),
            'titulo' => Yii::t('app', 'Titulo'),
            'telefone' => Yii::t('app', 'Telefone'),
            'endereco' => Yii::t('app', 'Endereco'),
            'cep' => Yii::t('app', 'Cep'),
            'cidade' => Yii::t('app', 'Cidade'),
            'estado' => Yii::t('app', 'Estado'),
            'descricao' => Yii::t('app', 'Descricao'),
            'categoria' => Yii::t('app', 'Categoria'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEmpresaCategorias()
    {
        return $this->hasMany(EmpresaCategoria::className(), ['idEmpresa' => 'idEmpresa']);
    }

    /**
     * {@inheritdoc}
     * @return \app\models\query\EmpresaQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\query\EmpresaQuery(get_called_class());
    }
}
