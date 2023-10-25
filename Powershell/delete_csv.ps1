$folderPath = "C:\<repo>"
$filesToDelete = @("file1.CSV", "file2.CSV")

# Loop dans le fichier pour delete les CSV
foreach ($fileToDelete in $filesToDelete) {
    $filePath = Join-Path -Path $folderPath -ChildPath $fileToDelete
    if (Test-Path -Path $filePath -PathType Leaf) {
            Remove-Item -Path $filePath -Force
            Write-Host "Deleted file: $fileToDelete"
    } else {
            Write-Host "File not found: $fileToDelete"
    }
}

