# Sur le 400
$sourcePath_ifc = "\\AS400\ifctest"
# backup sur le vieux Librex
$destinationPath_ifc = "\\Ancien_librex\z_export\ifctest"
# Local Librex02
$destinationPath_ifc_local = "C:\ifctest_local"

# Copie sur le vieux serveur Librex en backup
Copy-Item -Path $sourcePath_ifc\* -Destination $destinationPath_ifc -Recurse -Force

# Move sur un répertoire local
Move-Item -Path $sourcePath_ifc\* -Destination $destinationPath_ifc_local -Force
