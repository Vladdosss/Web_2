<%-- Created by IntelliJ IDEA. --%>
<%@ page import="java.util.stream.Stream" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="assets/images/dead.jpg" type="image/jpg">
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <title>Lab_2</title>
</head>

<body>
<div class="header">
    <p>Группа P3232</p>
    <p>Лисицина Василиса, Бирих Владислава</p>
    <p>Вар. 2833</p>
</div>

<div class="basis">
    <div class="chooseElement">
        <form class="validateForm" name="form" action="ControllerServlet" onsubmit="return validate(this);"
              method="POST">

            <div>
                <label class="chooseXTitle"><p>Введите значение X:</p></label>
                <input name="X" type="text" placeholder=" (-3 ... 5)"><br><br>
            </div>

            <div>

                <label class="chooseYTitle"><p>Выберите Y:</p></label>
                <table class="blocktext">
                    <tr>
                        <td><label><input type="button" class="button" id="1" name="R" value="-3"></label></td>
                        <td><label><input type="button" class="button" id="2" name="R" value="-2"></label></td>
                        <td><label><input type="button" class="button" id="3" name="R" value="-1"></label></td>
                    </tr>
                    <tr>
                        <td><label><input type="button" class="button" id="4" name="R" value="0"></label></td>
                        <td><label><input type="button" class="button" id="5" name="R" value="1"></label></td>
                        <td><label><input type="button" class="button" id="6" name="R" value="2"></label></td>
                    </tr>
                    <tr>
                        <td><label><input type="button" class="button" id="7" name="R" value="3"></label></td>
                        <td><label><input type="button" class="button" id="8" name="R" value="4"></label></td>
                        <td><label><input type="button" class="button" id="9" name="R" value="5"></label></td>
                    </tr>
                </table>
            </div>

            <div>
                <label class="chooseRTitle"><p>Введите значение R:</p></label>
                <input name="R" type="text" placeholder=" (2 ... 5)"><br><br>
            </div>

            <div id="message"></div>

            <div class="buttons">
                <div class="button">
                    <button class="butt submit_button" type="submit" name="Y">Отправить</button>
                </div>

                <div class="reset">
                    <button class="butt" type="reset">Очистить</button>
                </div>
            </div>

        </form>
    </div>

    <div class="svg">
        <svg width="300" height="300" class="svg-graph">

            <polygon class="przamoyg" points="100,150 150,150 150,250, 100,250"
                     fill="#FF00CC" stroke="black"></polygon>

            <polygon class="treyg" points="150,150 250,150 150,200"
                     fill="#FF00CC" stroke="black"></polygon>

            <line class="line" x1="0" x2="300" y1="150" y2="150" stroke="black"></line>
            <line class="line" x1="150" x2="150" y1="0" y2="300" stroke="black"></line>

            <text class="text" x="195" y="140">R/2</text>
            <text class="text" x="248" y="140">R</text>

            <text class="text" x="40" y="140">-R</text>
            <text class="text" x="90" y="140">-R/2</text>

            <text class="text" x="160" y="105">R/2</text>
            <text class="text" x="160" y="55">R</text>

            <text class="text" x="160" y="205">-R/2</text>
            <text class="text" x="160" y="255">-R</text>

            <text class="text" x="290" y="170">X</text>
            <text class="text" x="160" y="13">Y</text>

        </svg>
    </div>
</div>

<center>
    <div class="footer">
        <a href="https://se.ifmo.ru/">
            <img id="VT_logo" src="assets/images/vt_logo.png" width="100" height="100 " alt="logo">
        </a>
        <span class="center">ПИП 2020 г.</span>
    </div>
</center>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>
<script>
    $('label > .button').click(function () {
        y = ($(this).val());
        $('.submit_button').val(y);
    });
</script>
<script src="./assets/js/validator.js"></script>

</body>
</html>