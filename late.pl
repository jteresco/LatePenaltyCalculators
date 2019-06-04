#!/usr/bin/perl
#
# Script to demonstrate late penalties
#
# Jim Teresco
# The College of Saint Rose
# CSC 433, Programming Languages, Fall 2012
#
$base = 1.08;
$lateness = 1;
$penalty = 0.0;
while ($penalty < 100) {
    $penalty = $base**$lateness;
    printf("Hour $lateness late = $penalty%% penalty\n");
    $lateness++;
}
