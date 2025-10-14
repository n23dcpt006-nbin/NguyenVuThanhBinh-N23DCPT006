package bt7_junit5;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class CalculatorTest {

    @Test
    void testSumPositiveNumbers() {
        Calculator calc = new Calculator();
        assertEquals(5, calc.sum(2, 3));
    }

    @Test
    void testSumNegativeNumbers() {
        Calculator calc = new Calculator();
        assertEquals(-5, calc.sum(-2, -3));
    }

    @Test
    void testSumWithZero() {
        Calculator calc = new Calculator();
        assertEquals(3, calc.sum(3, 0));
    }

    @Test
    void testSumLargeNumbers() {
        Calculator calc = new Calculator();
        assertEquals(2000000000, calc.sum(1000000000, 1000000000));
    }
}
