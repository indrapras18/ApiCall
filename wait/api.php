<?php
require_once('koneksi.php');
header('Content-Type: application/json');
if (empty($_GET)) {
    $query = mysqli_query($koneksi, "SELECT * FROM userr");
    $result = array();
    while ($row = mysqli_fetch_array($query)) {
        array_push($result, array(
            'id' => $row['id'],
            'nama' => $row['nama'],
            'email' => $row['email'],
            'password' => $row['password']

        ));
    }

    echo json_encode(
        array('result' => $result)
    );
} else {
    $query = mysqli_query($koneksi, "SELECT * FROM userr where id =". $_GET['id']);
    $result = array();
    while ($row = $query->fetch_assoc()) {
        $result = array(
            'id' => $row['id'],
            'nama' => $row['nama'],
            'email' => $row['email'],
            'password' => $row['password']
        );
    }
    echo json_encode(
        $result
    );
}
?>