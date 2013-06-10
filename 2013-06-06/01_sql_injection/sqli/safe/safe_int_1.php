<?

require_once '../connection.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

if ($id) {
    $query = $dbh->prepare('SELECT * FROM news WHERE id = ' . $id);
    $query->execute();

    $data = $query->fetchAll(PDO::FETCH_CLASS);

    require_once '../presentation.php';
}

?>
