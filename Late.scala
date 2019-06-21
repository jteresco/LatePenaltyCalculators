// late penalty calculator in Scala 2.12
//
// Jim Teresco, Siena College
// Initial implementation Fri Jun 21 15:20:07 EDT 2019
//
// compile with scalac, run with scala

object Late {
  def main(args: Array[String]) {
    late(1)
  }

  def late(h: Int) {
     val penalty = scala.math.pow(1.08, h)
     println(s"Hour $h late = $penalty% penalty")
     if (penalty < 100) {
       late(h+1)
     }
  }
}