/* Late penalty calculator */
/* Jim Teresco, Aug 2012 */

#include <stdio.h>
#include <math.h>

int main() {
  int lateness;          /* How many hours late? */
  double base;           /* base for the penalty calculation */
  double penalty = 0.0;

  base = 1.08;
  lateness = 1;
  while (penalty < 100) {
    penalty = pow(base, lateness);
    printf("Hour %2d late = %4.2f%% penalty\n", lateness, penalty);
    lateness++;
  }
  return 0;
}
