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