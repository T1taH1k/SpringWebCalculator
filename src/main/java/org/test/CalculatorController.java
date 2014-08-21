package org.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalculatorController {
    @RequestMapping(value = "/calcjsp")
    public String calcJspPage() {
        return "calcjsp";
    }

    @RequestMapping(value = "/calculate", method= RequestMethod.POST)
    public String getHelloWorldPage(HttpServletRequest request, Model model) {

        String firstNumber=request.getParameter("firstnumber");
        String operatorSign=request.getParameter("operator");
        String secondnumber=request.getParameter("secondnumber");

        String result = doCalculation(firstNumber,secondnumber,operatorSign.charAt(0));

        model.addAttribute("value", result);
        return "result";
    }

    String doCalculation(String first,String second,char sign)
    {
        String result="Result :";
        double firstNumber=Double.valueOf(first).doubleValue();
        double secondNumber=Double.valueOf(second).doubleValue();
        double output;

        switch(sign)
        {
            case '+':output=firstNumber+secondNumber;
                break;
            case '-':output=firstNumber-secondNumber;
                break;
            case '*':output=firstNumber*secondNumber;
                break;
            case '/':output=firstNumber/secondNumber;
                break;
            default : output=0.00;
        }
        return (result+output);
    }

    @RequestMapping(value = "/")
    public String indexPage0() {
        return "index";
    }

    @RequestMapping(value = "/index")
    public String indexPage1() {
        return "index";
    }

    @RequestMapping(value = "/calchtml")
    public String calcHtmlPage() {
        return "calchtml";
    }
}

