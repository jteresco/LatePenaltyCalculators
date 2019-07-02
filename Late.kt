import kotlin.math.pow

/**
 * @author Benjamin Ellsworth
 * to run from cmd line:
 *  1. kotlinc Late.kt -include-runtime -d late.jar
 *  2. java -jar late.jar
 */

    val BASE = 1.08

    fun main() {
        var lateness = 1
        var penalty = 0.0
        while (penalty < 100) {
            penalty = BASE.pow(lateness)
            println("Hour ${lateness++} late = $penalty% penalty")
        }
    }
