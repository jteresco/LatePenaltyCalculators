/* Late penalty calculator */
/* Jim Teresco, October 2014 */

using namespace std;

#include <iostream>
#include <iomanip>
#include <math.h>

int main(int argc, char *argv[]) {
  int lateness;          /* How many hours late? */
  double base;           /* base for the penalty calculation */
  double penalty = 0.0;

  base = 1.08;
  lateness = 1;
  while (penalty < 100) {
    penalty = pow(base, lateness);
    cout << "Hour " << lateness << " late = " << fixed << setw(4) << setprecision(2) << 
      penalty << "% penalty" << endl;
    lateness++;
  }
  return 0;
}
