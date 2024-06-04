<?php
require 'app/config/database.php';
require 'app/controllers/PersonalController.php';

$controller = new PersonalController($pdo);

$action = $_GET['action'] ?? 'form';

if ($action == 'save') {
    $controller->savePersonal();
} else {
    $controller->showForm();
}
?>