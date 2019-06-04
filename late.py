#!/usr/bin/env python3
"""
Late penalty calculator using Python 3
Jim Teresco, The College of Saint Rose, CSC 433, Fall 2014
"""

penalty = 0.0
lateness = 1
while (penalty < 100.0):
    penalty = 1.08**lateness
    print('Hour ' + str(lateness) + ' late = %4.2f%% penalty' % penalty)
    lateness = lateness + 1

