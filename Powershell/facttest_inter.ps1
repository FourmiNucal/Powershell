$sourcePath2 = "\\AS400\facttest\2"
$sourcePath4 = "\\AS400\facttest\4"
$sourcePath5 = "\\AS400\facttest\5"
$sourcePath9 = "\\AS400\facttest\9"
$destinationPath2 = "\\Ancien_Librex\z_export\2"
$destinationPath4 = "\\Ancien_Librex\z_export\4"
$destinationPath5 = "\\Ancien_Librex\z_export\5"
$destinationPath9 = "\\Ancien_Librex\z_export\9"
# Local Librex02
$destinationPath2_local = "C:\<repo_local>\2"
$destinationPath4_local = "C:\<repo_local>\4"
$destinationPath5_local = "C:\<repo_local>\5"
$destinationPath9_local = "C:\<repo_local>\9"

# Copie sur le vieux serveur Librex en backup

Copy-Item -Path $sourcePath2\* -Destination $destinationPath2 -Recurse -Force

Copy-Item -Path $sourcePath4\* -Destination $destinationPath4 -Recurse -Force

Copy-Item -Path $sourcePath5\* -Destination $destinationPath5 -Recurse -Force

Copy-Item -Path $sourcePath9\* -Destination $destinationPath9 -Recurse -Force

# Move sur un répertoire local
Move-Item -Path $sourcePath2\* -Destination $destinationPath2_local -Force
Move-Item -Path $sourcePath4\* -Destination $destinationPath4_local -Force
Move-Item -Path $sourcePath5\* -Destination $destinationPath5_local -Force
Move-Item -Path $sourcePath9\* -Destination $destinationPath9_local -Force