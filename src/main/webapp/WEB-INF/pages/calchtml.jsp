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

<style type="text/css">
    .tblCalc{
        border:1px solid gray;
        margin:0;
        padding:0;
        width:250px;
        text-align:center;
    }
    .tblCalc input{
        border:1px solid gray;
        width:30px;
        margin:4px;
    }
    #btnWide{
        width:80px;
    }
    #secondnumber{
        width:250px;
    }
</style>


<form name="calc" action="calculate" method="POST">
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
</form>

<p><a href="index">Return to index page</a></p>

<script language="JavaScript">

    var Fcalc = document.calc;
    var OpFlag = false;
    var DecFlag = false;

    function NumPressed (Num)
    {
        if (Fcalc.secondnumber.value === "0" || OpFlag)
        {
            Fcalc.secondnumber.value = Num;
            OpFlag = false;
        }
        else {
            Fcalc.secondnumber.value += Num;
        }
    }

    function Operation (Op)
    {
        OpFlag = true;
        DecFlag = false;
        Fcalc.operator.value = Op;
        Fcalc.firstnumber.value = Fcalc.secondnumber.value;
        Fcalc.secondnumber.value = Op;
        }

    function Decimal ()
    {
        if (!OpFlag && !DecFlag){
            Fcalc.secondnumber.value += ".";
            DecFlag = true;
        }
    }

    function Clear ()
    {
        Fcalc.firstnumber.value = "0";
        Fcalc.secondnumber.value = "0";
        Fcalc.operator.value = "+";
        var OpFlag = false;
        var DecFlag = false;

    }

</script>

</body>
</html>