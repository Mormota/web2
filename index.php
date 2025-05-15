<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Belépés</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form action="login.php" method="POST">
        <label for="username">Email:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Jelszó:</label>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Belépés">
    </form>
</body>
</html>
