<?php
require_once 'config/database.php';

class Personal {
    private $pdo;

    public function __construct($pdo) {
        $this->pdo = $pdo;
    }

}
?>