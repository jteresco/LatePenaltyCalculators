! 	Late Penalty Calculator in Fortran
!	Jim Teresco, August 2019
!	===================================================
        program late

	implicit none

	integer lateness
	double precision penalty

 	lateness = 1
 	penalty = 0.0

	do while ( penalty < 100.0 )
	   penalty = 1.08 ** lateness
    	   print *, "Hour ", lateness, " late = ", penalty
           lateness = lateness + 1
	end do

	end
