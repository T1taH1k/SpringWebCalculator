<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Calculator</title>
</head>

<body>

<form method="POST">

    <input type="text" name="a" value="${a}"/>
    &
    <input type="text" name="b" value="${b}"/>
    = ${result}

    <input type="submit"><br>

    <input type="submit" value="Add"/>
    <input type="submit" value="Subtract"/>
    <input type="submit" value="Multiply"/>
    <input type="submit" value="Divide"/>

</form>

<form method="POST">
    <input type ="radio" name = "operator" value="+" checked> + <br>
    <input type="radio" name = "operator" value="-"> - <br>
    <input type="radio" name = "operator" value="/"> * <br>
    <input type="radio" name = "operator" value="*"> / <br>
</form>

</body>
</html>
