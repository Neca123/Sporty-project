<?php 

include 'initialize.php';

$filter = $_GET['filter'];
$eventsList = $currentUser->getEventsList($filter);

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="jumbotron">
          <h1>Let's play some <?php echo $filter; ?>, <?php echo $currentUser->getUsername(); ?>!</h1>
          <hr>
          <p>
            <a href="eventCreate.php">Create</a> |
            <a href="editProfile.php">Edit</a> | 
            <a href="logout.php">Logout</a>
          </p>
          <p>
            <a href="dashboard.php">< Back</a>
          </p>
        </div>

        <?php 

        foreach($eventsList as $event)
        {
          ?> 

            <div class="alert alert-danger">
              <h2><?php echo $event['event_title']; ?> (<?php echo $event['user_name']; ?>)</h2>
              <p>Date & time: <?php echo $event['event_date']; ?> @ <?php echo $event['event_time']; ?>h</p>
              <p>Players: <?php echo $event['event_going']; ?>/<?php echo $event['event_players']; ?></p>

              <br>
              <a href="eventJoin.php?filter=<?php echo $filter; ?>&eventID=<?php echo $event['event_id']?>" class="btn btn-danger">JOIN</a>
              <a href="eventLeave.php?filter=<?php echo $filter; ?>&eventID=<?php echo $event['event_id']?>" class="btn btn-danger">LEAVE</a>
            </div>
            
          <?php
        }
        ?>

      </div>
    </div>
  </div>

</body>
</html>