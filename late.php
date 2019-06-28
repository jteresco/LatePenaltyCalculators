<?php
// Late penalty calculator in PHP
//
// Jim Teresco, Fri Jun 28 17:40:56 EDT 2019
//
// run interactively with
// php late.php

$lateness = 1;
$penalty = 0.0;

while ($penalty < 100) {
  $penalty = 1.08**$lateness;
  echo "Hour ".$lateness." late = ".$penalty."% penalty\n";
  $lateness++;
}
?>