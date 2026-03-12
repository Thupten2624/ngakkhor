<?php
declare(strict_types=1);

header('Content-Type: application/json; charset=utf-8');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
  http_response_code(204);
  exit;
}

$configPath = __DIR__ . '/db_config.php';
if (!file_exists($configPath)) {
  echo json_encode(['ok' => false, 'error' => 'Falta db_config.php']);
  exit;
}

/** @var array{db_host:string,db_name:string,db_user:string,db_pass:string} $cfg */
$cfg = require $configPath;

try {
  $pdo = new PDO(
    "mysql:host={$cfg['db_host']};dbname={$cfg['db_name']};charset=utf8mb4",
    $cfg['db_user'],
    $cfg['db_pass'],
    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
  );

  $pdo->exec('CREATE TABLE IF NOT EXISTS guru_state (
    id INT PRIMARY KEY,
    payload LONGTEXT NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4');
} catch (Throwable $e) {
  echo json_encode(['ok' => false, 'error' => 'Error DB']);
  exit;
}

$action = $_GET['action'] ?? '';

if ($action === 'load') {
  $stmt = $pdo->query('SELECT payload FROM guru_state WHERE id = 1 LIMIT 1');
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
  if (!$row) {
    echo json_encode(['ok' => true, 'state' => null]);
    exit;
  }
  $decoded = json_decode((string)$row['payload'], true);
  echo json_encode(['ok' => true, 'state' => is_array($decoded) ? $decoded : null]);
  exit;
}

if ($action === 'save' && $_SERVER['REQUEST_METHOD'] === 'POST') {
  $raw = file_get_contents('php://input') ?: '';
  $json = json_decode($raw, true);
  $state = $json['state'] ?? null;
  if (!is_array($state)) {
    echo json_encode(['ok' => false, 'error' => 'state inválido']);
    exit;
  }

  $payload = json_encode($state, JSON_UNESCAPED_UNICODE);
  $stmt = $pdo->prepare('INSERT INTO guru_state (id, payload) VALUES (1, :payload)
    ON DUPLICATE KEY UPDATE payload = VALUES(payload)');
  $stmt->execute(['payload' => $payload]);

  echo json_encode(['ok' => true]);
  exit;
}

echo json_encode(['ok' => false, 'error' => 'Acción no válida']);
