<?php
require_once 'app/models/Personal.php';
require_once 'app/models/Contrato.php';

class PersonalController {
    private $personal;
    private $contrato;

    public function __construct($pdo) {
        $this->personal = new Personal($pdo);
        $this->contrato = new Contrato($pdo);
    }
}
?>