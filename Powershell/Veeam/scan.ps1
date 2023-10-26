$repositoryName = "mtibackup"
$repository = Get-VBRBackupRepository -Name $repositoryName

# Rescan the repository to detect any new backup files
Sync-VBRBackupRepository -Repository $repository -WarningAction SilentlyContinue