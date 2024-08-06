param (
    [string]$inputPath,
    [string]$outputPath
)

$bytes = [System.IO.File]::ReadAllBytes($inputPath)
$hex = -join ($bytes | ForEach-Object { $_.ToString("x2") })
[System.IO.File]::WriteAllText($outputPath, $hex)