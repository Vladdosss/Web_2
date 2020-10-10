function validate(form) {

    var fail = "";
    var R = form.R.value;
    var X = form.X.value;

    var chooseRTitle = form.querySelector('.chooseRTitle')
    var chooseXTitle = form.querySelector('.chooseXTitle')

//[0].defaultValue


    if (X >= 5 || X <= -3 || isNaN(X)) {

        fail = fail + '<br>' + "Значение X должно быть от -3 до 5!!";
        chooseXTitle.style.color = 'red';
        chooseXTitle.style.fontWeight = 'bold';

    }
    if (X == null || X == "") {
        fail = fail + '<br>' + "Впишите X!!";
        chooseXTitle.style.color = 'red';
        chooseXTitle.style.fontWeight = 'bold';


    }


    /*if (R >= 5 || R <= 2 || isNaN(R)) {

        fail = fail + '<br>' + "Значение R должно быть от 2 до 5!!";
        chooseRTitle.style.color = 'red';
        chooseRTitle.style.fontWeight = 'bold';

    }
    if (R == null || R == "") {
        fail = fail + '<br>' + "Впишите R!";
        chooseRTitle.style.color = 'red';
        chooseRTitle.style.fontWeight = 'bold';


    }*/


    if (fail) {

        var element = document.getElementById('message');
        element.innerHTML = fail;
        return false;
    } else {
        return true;
    }

}