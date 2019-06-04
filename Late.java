/**
 * Late penalty calculator
 *
 * @author Jim Teresco
 *
 */
public class Late {

    /** set to the late penalty factor */
    private static final double BASE = 1.08;

    /**
       main method to run late penalty calculator

       @param args unused
    */
    public static void main(String[] args) {
	int lateness=1;
	double penalty = 0.0;
	
	while (penalty < 100) {
	    penalty  = Math.pow(BASE, lateness);
	    System.out.println("Hour " + lateness + " late = " + penalty + "% penalty");
	    lateness++;
	}
    }
}
