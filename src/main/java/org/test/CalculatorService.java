package org.test;

import org.springframework.stereotype.Service;

@Service
public class CalculatorService {

    String doCalculation(String a, String b, char sign) {
        String result = "Result :";
        double firstNumber = Double.valueOf(a).doubleValue();
        double secondNumber = Double.valueOf(b).doubleValue();
        double output;

        switch (sign) {
            case '+':
                output = firstNumber + secondNumber;
                break;
            case '-':
                output = firstNumber - secondNumber;
                break;
            case '*':
                output = firstNumber * secondNumber;
                break;
            case '/':
                output = firstNumber / secondNumber;
                break;
            default:
                output = 0.00;
        }
        return (result + output);
    }
}
