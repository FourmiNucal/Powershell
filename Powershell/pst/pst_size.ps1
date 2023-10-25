# Spécifiez l'OU où se trouvent les ordinateurs
$ouPath = "OU=<>,OU=<>,DC=<>,DC=<>"

# Initialisez une variable pour suivre la taille totale
$totalSize = 0

# Interrogez Active Directory pour obtenir une liste d'objets d'ordinateurs dans l'OU spécifié
$computers = Get-ADComputer -Filter * -SearchBase $ouPath

# Parcourez chaque ordinateur
foreach ($computer in $computers) {
    $computerName = $computer.Name

    # Construisez le chemin UNC vers le dossier "Fichiers Outlook" de l'utilisateur sur l'ordinateur distant
    $remoteFolderPath = "\\$computerName\C$\Users\*\Documents\Fichiers Outlook"

    # Obtenez tous les fichiers PST dans le dossier distant
    $pstFiles = Get-ChildItem -Path $remoteFolderPath -Filter *.pst -Recurse -ErrorAction SilentlyContinue

    # Calculez la taille totale des fichiers PST
    foreach ($pstFile in $pstFiles) {
        $totalSize += $pstFile.Length
    }
}

# Convertissez la taille totale en format lisible
$totalSizeReadable = "{0:N2} Mo" -f ($totalSize / 1MB)

# Affichez la taille totale
Write-Output "Taille totale des fichiers PST : $totalSizeReadable"
