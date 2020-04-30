<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

class Pers extends Entity
{
    protected $_accessible = [
        'name' => true,
        'mail' => true,
        'age' => true
    ];
}
