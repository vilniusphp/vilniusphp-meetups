<?

require_once '../connection.php';

$id = isset($_GET['id']) ? $_GET['id'] : 0;

$query = $dbh->prepare('SELECT * FROM news WHERE id = ' . addslashes($id));
$query->execute();

$data = $query->fetchAll(PDO::FETCH_CLASS);

require_once '../presentation.php';
?>