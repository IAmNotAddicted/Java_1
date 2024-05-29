<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Рахунок</title>
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

        .button-container button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        .button-container button:hover {
            background-color: #0056b3;
        }

        p {
            font-size: 18px;
        }

        .money-row {
            margin-bottom: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .money-row span {
            font-size: 16px;
        }

        .money-row button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        .money-row button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<h1>Рахунок</h1>

<!-- Кнопки навігації -->
<div class="button-container">
    <button onclick="location.href='/departments'">Ведення рахунків 1</button>
    <button onclick="location.href='/givemoney'">Нарахування зарплати 2</button>
    <button onclick="location.href='/nomoney'">Сплати податків 4</button>
</div>

<!-- Рахунок -->
<p>Поточний рахунок: <span id="balance">0</span></p>

<!-- Суми грошей в стовпчику -->
<div id="money-column">
    <div class="money-row">
        <span>100</span>
        <button onclick="addMoney(100, this)">Отримати</button>
    </div>
    <div class="money-row">
        <span>200</span>
        <button onclick="addMoney(200, this)">Отримати</button>
    </div>
    <div class="money-row">
        <span>300</span>
        <button onclick="addMoney(300, this)">Отримати</button>
    </div>
</div>

<script>
    // Початковий баланс рахунку
    var balance = 0;
    // Спан, в якому відображається баланс
    var balanceElement = document.getElementById("balance");

    // Функція для додавання грошей
    function addMoney(amount, button) {
        // Додати суму до поточного балансу
        balance += amount;
        // Оновити відображення поточного балансу
        balanceElement.textContent = balance;
        // Сховати рядок з сумою грошей
        button.parentElement.style.display = 'none';
    }
</script>
</body>
</html>
