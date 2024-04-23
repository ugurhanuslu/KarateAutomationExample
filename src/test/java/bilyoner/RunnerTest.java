package bilyoner;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

@KarateOptions(tags = {"@positive","@negative"})
class RunnerTest {
    
    // this will run all *.feature files that exist in sub-directories
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }
}
