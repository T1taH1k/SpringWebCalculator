<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SpringMVC Calculator</title>
</head>
<body>
<h2>SpringMVC Calculator </h2>
<p><i>JPS Realization</i></p>
<hr/>
<form method="POST" action="calculate">
    <label>Enter First Number :</label>
    <input type="text" id="firstnumber" name="firstnumber" /><br/>
    <label>Operator</label>
    <select name="operator"  id="operator">
        <option value="+" selected="selected">Add [+]</option>
        <option value="-">Subtract [-]</option>
        <option value="/">Divide [/]</option>
        <option value="*">Multiply [*]</option>
    </select><br/>
    <label>Enter Second Number :</label>
    <input type="text" id="secondnumber" name="secondnumber" /><br/>
    <input type="submit" value="Result" />
</form>
<p><a href="index">Return to index page</a></p>
</body>
</html>
