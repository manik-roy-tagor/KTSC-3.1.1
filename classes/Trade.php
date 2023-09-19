<?php
$filepath = realpath(dirname(__FILE__));
include_once $filepath . '/../lib/Database.php';
include_once $filepath . '/../helpers/Format.php';
?>
<?php
/**
*
*/
class Trade{
	private $db;
	private $fm;
	function __construct() {
		$this->db = new Database();
		$this->fm = new Format();
	}
	/* ------- tableegory ---------*/


	public function getAllTrade() {
		$query = "SELECT * FROM trade_tbl ORDER BY id";
		$result = $this->db->select($query);
		return $result;
	}

	
}
?>