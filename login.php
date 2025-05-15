<?php
$decodedLines = [];
$filename = "password.txt";
$key = [5, -14, 31, -9, 3];

function decodeLine($line, $key) {
    $decoded = "";
    $keyLen = count($key);
    for ($i = 0; $i < strlen($line); $i++) {
        $offset = $key[$i % $keyLen];
        $decoded .= chr(ord($line[$i]) - $offset);
    }
    return $decoded;
}

// Beolvasás és dekódolás
$rawLines = file($filename, FILE_IGNORE_NEW_LINES);
foreach ($rawLines as $line) {
    $decodedLines[] = decodeLine($line, $key);
}

// POST adat beolvasás
$username = $_POST['username'] ?? '';
$password = $_POST['password'] ?? '';
$found = false;

// Ellenőrzés
foreach ($decodedLines as $entry) {
    [$user, $pass] = explode('*', $entry, 2);
    if ($user === $username && $pass === $password) {
        $found = true;
        break;
    }
}

if ($found) {
    // Kapcsolódás adatbázishoz
    $conn = new mysqli("localhost", "root", "", "adatok");

    if ($conn->connect_error) {
        die("Kapcsolódási hiba: " . $conn->connect_error);
    }

    $stmt = $conn->prepare("SELECT Titkos FROM tabla WHERE Username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->bind_result($szin);

    if ($stmt->fetch()) {
        echo "<body style='background-color: $szin; color: white;'>";
        echo "<h1>Sikeres belépés, üdvözöllek $username!</h1>";
        echo "<p>A háttérszíned: $szin</p>";
        echo "</body>";
    } else {
        echo "Nem található a felhasználó az adatbázisban.";
    }

    $stmt->close();
    $conn->close();
} else {
    echo "<p>Hibás felhasználónév vagy jelszó!</p>";
}
?>
