param (
    [string]$inputPath,
    [string]$outputPath
)

$hex = [System.IO.File]::ReadAllText($inputPath)
$bytes = [byte[]]::new($hex.Length / 2)
for ($i = 0; $i -lt $bytes.Length; $i++) {
    $bytes[$i] = [convert]::ToByte($hex.Substring($i * 2, 2), 16)
}
[System.IO.File]::WriteAllBytes($outputPath, $bytes)