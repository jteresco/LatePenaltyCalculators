/*
    Late penalty generator in C#

    Jim Teresco, CSC 433, Fall 2014, The College of Saint Rose
    Based on Hello, World example by Steven Ruhle

    Compile and run (on a system that has Mono installed) as follows:

    mcs Late.cs
    mono Late.exe

*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Late
{
    class Program
    {
        static void Main(string[] args)
        {
	    int lateness;          /* How many hours late? */
  	    double baseline;           /* base for the penalty calculation */
  	    double penalty = 0.0;

	    baseline = 1.08;
	    lateness = 1;
	    while (penalty < 100) {
		penalty = Math.Pow(baseline, lateness);
		Console.WriteLine("Hour {0} late = {1}% penalty", lateness, penalty);
		lateness++;
	    }
        }
    }
}
