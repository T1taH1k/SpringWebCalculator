<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SpringMVC Calculator</title>
</head>
<body>
<h2>SpringMVC Calculator </h2>
<p><i>HTML/JS Realization</i></p>
<hr/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/calchtml.css"/>

<form name="calc" action="calculateHTML" method="POST">
    <table class="tblCalc" cellpadding=0 cellspacing=0>
        <tr>
            <td colspan=5 align=middle>
                <input style="visibility: hidden" type="text" id="firstnumber" name="firstnumber" value="0" />
            </td>
        </tr>
        <tr>
            <td colspan=5 align=middle>
            <input style="visibility: hidden" id="operator" name="operator" type="Text"
                  value = "+" size=28 width="250px">

            </td>
        </tr>
        <tr>
            <td colspan=5 align=middle>
                <input id="secondnumber" name="secondnumber" type="Text"
                       size=28 value="0" width="250px">
            </td>
        </tr>
        <tr>
            <td colspan="3"></td>
            <td><input name="btnClear" type="Button"
                       value="C" onclick="Clear()" /></td>
        </tr>
        <tr>
            <td><input name="btnSeven" type="Button"
                       value="7" onclick="NumPressed(7)"></td>
            <td><input name="btnEight" type="Button"
                       value="8" onclick="NumPressed(8)"></td>
            <td><input name="btnNine" type="Button"
                       value="9" onclick="NumPressed(9)"></td>
            <td><input name="btnPlus" type="Button"
                       value="+" onclick="Operation('+')" /></td>
        </tr>
        <tr>
            <td><input name="btnFour" type="Button"
                       value="4" onclick="NumPressed(4)"></td>
            <td><input name="btnFive" type="Button"
                       value="5" onclick="NumPressed(5)"></td>
            <td><input name="btnSix" type="Button"
                       value="6" onclick="NumPressed(6)"></td>
            <td><input name="btnMinus" type="Button"
                       value="-" onclick="Operation('-')" /></td>
        </tr>
        <tr>
            <td><input name="btnOne" type="Button"
                       value="1" onclick="NumPressed(1)"></td>
            <td><input name="btnTwo" type="Button"
                       value="2" onclick="NumPressed(2)"></td>
            <td><input name="btnThree" type="Button"
                       value="3" onclick="NumPressed(3)"></td>
            <td><input name="btnMultiply" type="Button"
                       value="*" onclick="Operation('*')" /></td>
            <td align=middle>&nbsp;</td>
        </tr>
        <tr>
            <td><input name="btnZero" type="Button"
                       value="0" onclick="NumPressed(0)"></td>
            <td><input name="btnDecimal" type="Button"
                       value="." onclick="Decimal()"></td>
            <td><input name="btnEquals" type="submit"
                       value="="></td>
            <td align=middle><input name="btnDivide" type="Button"
                                    value=" / " onclick="Operation('/')" /></td>
        </tr>
    </table>
    <p><a href="${pageContext.request.contextPath}">Return to index page</a></p>
    <H2>${value}</H2>
</form>

<script type='text/javascript' src='${pageContext.request.contextPath}/resources/js/calc.js' url=''></script>

</body>
</html>