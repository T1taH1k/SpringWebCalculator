package org.test;

import org.springframework.stereotype.Service;
import org.apache.log4j.Logger;

@Service
public class CalculatorService {

    private static final Logger log = Logger.getLogger(CalculatorService.class);

    String doCalculation(String a, String b, char sign) {
        String result = "Result :";
        double firstNumber = Double.valueOf(a).doubleValue();
        double secondNumber = Double.valueOf(b).doubleValue();
        double output;

        switch (sign) {
            case '+':
                output = firstNumber + secondNumber;
                log.info("Add two numbers");
                break;
            case '-':
                output = firstNumber - secondNumber;
                log.info("Substract two numbers");
                break;
            case '*':
                output = firstNumber * secondNumber;
                log.info("Multiply two numbers");
                break;
            case '/':
                output = firstNumber / secondNumber;
                log.info("Divide two numbers");
                break;
            default:
                output = 0.00;
                log.info("Miss one or both parameters");
        }
        return (result + output);
    }
}
