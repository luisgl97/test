<?php
require_once 'config/database.php';

class Contrato {
    private $pdo;

    public function __construct($pdo) {
        $this->pdo = $pdo;
    }
}
?>