<?php
include 'cnx.php';

$sql = $cnx->prepare("Select idCateg, nomCateg, imageCateg from categorie");
$sql->execute();

echo "<table border=1   >";
foreach($sql->fetchAll(PDO:: FETCH_ASSOC) as $ligne)
{
    echo "<tr onclick='GetLesJeux(".$ligne['idCateg'].")'>";
        echo "<td>".$ligne['idCateg']."</td>";
        echo "<td>".$ligne['nomCateg']."</td>";
        echo "<td><img src='".$ligne['imageCateg']."'></td>";
    echo '</tr>';
}
echo '</table>';
?>