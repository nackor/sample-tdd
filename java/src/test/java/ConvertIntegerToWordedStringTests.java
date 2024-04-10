import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import lib.Converter;

public class ConvertIntegerToWordedStringTests {

    @Test
    // TODO: This test will become obsolete if the featured function is fully
    // implemented.
    void notImplementedYet() {
        assertThrows(UnsupportedOperationException.class, () -> {
            Converter.integerToWordedString(Integer.MIN_VALUE);
        });
    }

    @Test
    // TODO: Initial "red" test to code logic
    void firstPostiveIntegerIsOne() {
        int number = 1;
        String words = Converter.integerToWordedString(number);
        assertEquals("one", words);
    }
}