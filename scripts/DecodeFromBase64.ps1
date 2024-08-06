param (
    [string]$inputPath,
    [string]$outputPath
)

$base64 = [System.IO.File]::ReadAllText($inputPath)
$bytes = [System.Convert]::FromBase64String($base64)
[System.IO.File]::WriteAllBytes($outputPath, $bytes)