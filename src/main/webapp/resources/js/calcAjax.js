$(document).ready(function() {

    $('#btnEquals').click(function() {

        var firstnumber = $('#firstnumber').val();
        var secondnumber = $('#secondnumber').val();
        var operator = $('#operator').val();
        //operator = operator == '+' ? 'a' :
          //      operator == '-' ? 's' :
            //    operator == '/' ? 'd' :
              //  operator == '*' ? 'm' : '';
        var json = { "firstnumber" : firstnumber, "secondnumber" : secondnumber, "operator": operator};

        $.ajax({

            url: "dynamic/calculateHTML",
            data: json,
            method: "POST",

            success: function(response) {
                //$('#calc').append("<p>" + response + "</p>");
                $('#res').text(response);
                $('#secondnumber').val(0);

            }
        });

    });
});
