<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Перекидання грошей</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
            color: #333;
        }

        h1, h2 {
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

        form div {
            margin-bottom: 10px;
        }

        form label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        form input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        form button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        form button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h1>Перекидання грошей</h1>

    <!-- Кнопки навігації -->
    <div class="button-container">
        <button onclick="location.href='/departments'">Ведення рахунків 1</button>
        <button onclick="location.href='/incomingmoney'">Прийняття оплат від клієнтів 3</button>
        <button onclick="location.href='/nomoney'">Сплати податків 4</button>
    </div>

    <!-- Форма для перекидання грошей -->
    <form>
        <div>
            <label for="accountNumber">Номер рахунку:</label>
            <input type="text" id="accountNumber" name="accountNumber" required>
        </div>
        <div>
            <label for="amount">Сума:</label>
            <input type="text" id="amount" name="amount" required>
        </div>
        <div>
            <button type="button" onclick="reloadPage()">Перекинути</button>
        </div>
    </form>

    <script>
        function reloadPage() {
            location.reload();
        }
    </script>
</body>
</html>
