package org.test;

import org.junit.*;
import static org.junit.Assert.*;

public class CalculatorServiceTest {

    CalculatorService c;

    @Before
    public void setup(){
      c = new CalculatorService();
    }

    @Test
    public void TestAdd(){
        assertEquals(c.doCalculation("9","3",'+'),"Result :12.0");
    }

    @Test
    public void TestSubstract(){
        assertEquals(c.doCalculation("9", "3", '-'), "Result :6.0");
    }

    @Test
    public void TestDivide(){
        assertEquals(c.doCalculation("9","3",'/'),"Result :3.0");
    }

    @Test
    public void TestMultiply(){
        assertEquals(c.doCalculation("9","3",'*'),"Result :27.0");
    }

}
