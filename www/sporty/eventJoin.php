<?php 

include 'initialize.php';

$filter = $_GET['filter'];
$eventID = $_GET['eventID'];

$currentUser->eventGo($eventID);
Header("Location: http://localhost/www/sporty/events.php?filter={$filter}");