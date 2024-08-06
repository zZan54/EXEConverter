param (
    [string]$inputPath,
    [string]$outputPath
)

$binaryString = [System.IO.File]::ReadAllText($inputPath)
$bytes = [byte[]]::new($binaryString.Length / 8)
for ($i = 0; $i -lt $bytes.Length; $i++) {
    $bytes[$i] = [convert]::ToByte($binaryString.Substring($i * 8, 8), 2)
}
[System.IO.File]::WriteAllBytes($outputPath, $bytes)