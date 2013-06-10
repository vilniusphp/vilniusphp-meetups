<?

require_once '../connection.php';

$id = isset($_GET['id']) ? $_GET['id'] : 0;
$query = $dbh->prepare('SELECT * FROM news WHERE id = :id');
$query->execute(array(':id' => $id));

$data = $query->fetchAll(PDO::FETCH_CLASS);

require_once '../presentation.php';

?>
