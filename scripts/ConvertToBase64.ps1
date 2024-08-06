param (
    [string]$inputPath,
    [string]$outputPath
)

$bytes = [System.IO.File]::ReadAllBytes($inputPath)
$base64 = [System.Convert]::ToBase64String($bytes)
[System.IO.File]::WriteAllText($outputPath, $base64)