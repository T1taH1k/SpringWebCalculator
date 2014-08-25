$(document).ready(function() {

    $('#btnEquals').click(function() {

        var firstnumber = $('#firstnumber').val();
        var secondnumber = $('#secondnumber').val();
        var operator = $('#operator').val();
        operator = operator == '+' ? 'a' :
                operator == '-' ? 's' :
                operator == '/' ? 'd' :
                operator == '*' ? 'm' : '';
        var json = { "firstnumber" : firstnumber, "secondnumber" : secondnumber, "operator": operator};

        $.ajax({
            url: "dynamic/calculateHTML",
            data: JSON.stringify(json),
            method: "POST",

            success: function(response) {
                $('<p>'+response+'</p>').appendTo('#calc');
            }
        });
        return false;
    });
});
