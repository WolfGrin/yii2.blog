<?php
/**
 * Created by PhpStorm.
 * User: User
 * Date: 05.05.2017
 * Time: 13:03
 */

namespace app\models;

use yii\db\ActiveRecord;

class Sites extends ActiveRecordv
{
    public $link;
    public $img;
    public $order;

    public function afterFind() {
        $this->link = "http://yii2.blog/".$this->alias;
        $this->img = "/web/images/courses/".$this->alias.".png";
        $this->order = "http://yii2.blog/order?product_ids=".$this->srs_id;
    }
}