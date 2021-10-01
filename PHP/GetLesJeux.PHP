<?php
include 'cnx.php';

//$sql = $cnx->prepare("Select idJeux, nomJeux, imageJeux from jeux where numCateg =".$_GET['numCateg']);
$sql = $cnx->prepare("Select idJeux, nomJeux, imageJeux from jeux where numCateg = ?");
$sql->bindValue(1,$_GET['numCateg']);
$sql->execute();

echo "<table border=1   >";
foreach($sql->fetchAll(PDO:: FETCH_ASSOC) as $ligne)
{
    echo "<tr>";
        echo "<td>".$ligne['idJeux']."</td>";
        echo "<td>".$ligne['nomJeux']."</td>";
        echo "<td><img src='".$ligne['imageJeux']."'></td>";
    echo '</tr>';
}
echo '</table>';
?>