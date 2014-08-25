package org.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CalculatorController {

    @Autowired
    private CalculatorService Calculator;

    @RequestMapping(value = {"/index", "/"})
    public String indexPage1() {
        return "index";
    }

    @RequestMapping(value = "/calcjsp")
    public String calcJspPage() { return "calcjsp"; }

    @RequestMapping(value = "/calchtml")
    public String calcHtmlPage() {return "calchtml"; }

    @RequestMapping(value = "/calculateJSP", method= RequestMethod.POST)
    public String getJSPPage(HttpServletRequest request, Model model) {

        String firstNumber=request.getParameter("firstnumber");
        String operatorSign=request.getParameter("operator");
        String secondnumber=request.getParameter("secondnumber");

        String result = Calculator.doCalculation(firstNumber,secondnumber,operatorSign.charAt(0));

        model.addAttribute("value", result);
        return "calcjsp";
    }

    @RequestMapping(value = "calculateHTML", method= RequestMethod.POST)
    public @ResponseBody String getHTMLPage(HttpServletRequest request) {

        String firstNumber=request.getParameter("firstnumber");
        String operatorSign=request.getParameter("operator");
        String secondnumber=request.getParameter("secondnumber");

        String result = Calculator.doCalculation(firstNumber,secondnumber,operatorSign.charAt(0));

        return result;
    }

}

