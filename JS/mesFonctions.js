function GetAllCategories() 
{
    $.ajax
    (
        {
            //appel à un script PHP
            url:"../PHP/GetCategories.php",
            success: function(data)
            {
                $('#divCateg').append(data);
            },
            error: function()
            {
                alert("Erreur sur l'appel des catégories");
            }
        }
    );
}

function GetLesJeux(idCateg)
{
    $.ajax
    (
        {
            method:"get",
            url:"../PHP/GetLesJeux.php",
            data:"numCateg="+idCateg,
            success: function(donnees)
            {
                $('#divJeux').empty();
                $('#divJeux').append(donnees);
            },
            error: function()
            {
                alert("Erreur sur la page jeux");
            }
        }
    )
}