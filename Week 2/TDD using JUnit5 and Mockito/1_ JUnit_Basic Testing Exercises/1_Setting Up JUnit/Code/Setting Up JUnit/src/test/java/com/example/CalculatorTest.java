package com.example;

import com.example.Calculator;
import static org.junit.Assert.*;
import org.junit.Test;

public class CalculatorTest {

    @Test
    public void testAdd() {
        Calculator calc = new Calculator();
        assertEquals(8, calc.add(5, 3));
    }

    @Test
    public void testAddFail() {
        Calculator calc = new Calculator();
        assertNotEquals(10, calc.add(2, 2));
    }
}
