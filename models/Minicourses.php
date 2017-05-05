<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 05.05.2017
 * Time: 12:59
 */

namespace app\models;


use yii\db\ActiveRecord;

class Minicourses extends ActiveRecordv
{
    public function afterFind() {
        $this->img = "/web/images/minicourses/".$this->alias.".img";
    }
}