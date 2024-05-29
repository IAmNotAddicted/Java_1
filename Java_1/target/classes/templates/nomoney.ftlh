<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Сплата податків</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
            color: #333;
        }

        h1 {
            color: #0056b3;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .button-container button, .tax-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .button-container button:hover, .tax-button:hover {
            background-color: #0056b3;
        }

        .tax-button-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<!-- Кнопки у верхньому ряду -->
<div class="button-container">
    <button onclick="location.href='/departments'">Ведення рахунків 1</button>
    <button onclick="location.href='/givemoney'">Нарахування зарплати 2</button>
    <button onclick="location.href='/incomingmoney'">Прийняття оплат від клієнтів 3</button>
</div>

<h1>Сплата податків</h1>

<p>Виберіть податок, який ви хочете сплатити:</p>

<div class="tax-button-container">
    <div>
        <button class="tax-button" onclick="payTax('ПДФО')">Сплатити ПДФО</button>
    </div>
    <div>
        <button class="tax-button" onclick="payTax('ЄСВ')">Сплатити ЄСВ</button>
    </div>
    <div>
        <button class="tax-button" onclick="payTax('ПДВ')">Сплатити ПДВ</button>
    </div>
</div>

<script>
    function payTax(taxType) {
        alert('Ви сплатили ' + taxType + '!');
    }
</script>
</body>
</html>
