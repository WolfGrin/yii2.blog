<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 05.05.2017
 * Time: 13:02
 */

namespace app\models;

use yii\db\ActiveRecord;

class Reviews extends ActiveRecordv
{
    public function afterFind() {
        $this->video = $this->youtube("{youtube:".$this->video.",480,295}");
    }

    private function youtube($text) {
        $reg = "/{youtube:([\w-_]*)?,(\d*)?,(\d*)?}/i";
        $text = preg_replace($reg, str_replace(array("%name%", "%width%", "%height%"), array("\\1", "\\2", "\\3"), file_get_contents(Yii::$app->basePath.Yii::$app->params["dir_tmpl"]."youtube.tpl")), $text);
        return $text;
    }
}