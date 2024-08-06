param (
    [string]$inputPath,
    [string]$outputPath
)

$bytes = [System.IO.File]::ReadAllBytes($inputPath)
$binary = -join ($bytes | ForEach-Object { [Convert]::ToString($_, 2).PadLeft(8, '0') })
[System.IO.File]::WriteAllText($outputPath, $binary)