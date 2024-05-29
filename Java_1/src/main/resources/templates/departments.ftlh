<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <title>Список Кафедр</title>
    <style>
        /* Загальні стилі для тіла сторінки */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
            color: #333;
        }

        /* Заголовок */
        h1, h2 {
            color: #0056b3;
        }

        /* Контейнер для навігаційних кнопок */
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        /* Навігаційні кнопки */
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

        /* Список кафедр */
        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 10px;
            padding: 10px;
        }

        li div {
            margin-bottom: 5px;
        }

        li form {
            display: inline;
        }

        li input[type="submit"] {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        li input[type="submit"]:hover {
            background-color: #c82333;
        }

        /* Форма для додавання нової кафедри */
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
    <h1>Ведення рахунків</h1>

    <!-- Кнопки навігації -->
    <div class="button-container">
        <button onclick="location.href='/givemoney'">Нарахування зарплати 2</button>
        <button onclick="location.href='/incomingmoney'">Прийняття оплат від клієнтів 3</button>
        <button onclick="location.href='/nomoney'">Сплати податків 4</button>
    </div>

    <!-- Відображення списку кафедр -->
    <ul>
        <#list departments as department>
            <li>
                <div>Код країни: <a href="/departments/${department.id}">${department.name}</a></div>
                <div>Контрольне число: ${department.title}</div>
                <div>Код банку: ${department.phone}</div>
                <div>Номер рахунку: ${department.classroom}</div>
                <form action="/departments/delete/${department.id}" method="post" style="display:inline;">
                    <input type="submit" value="Видалити">
                </form>
            </li>
        </#list>
    </ul>

    <!-- Форма для додавання нової кафедри -->
    <h2>Додавання рахунку</h2>

    <form action="/departments/create" method="post" accept-charset="UTF-8">
        <div>
            <label>Код країни:</label>
            <input type="text" name="name" required>
        </div>
        <div>
            <label>Контрольне число:</label>
            <input type="text" name="title" required>
        </div>
        <div>
            <label>Код банку:</label>
            <input type="text" name="phone" required>
        </div>
        <div>
            <label>Номер рахунку:</label>
            <input type="text" name="classroom" required>
        </div>
        <button type="submit">Додати</button>
    </form>
</body>
</html>
