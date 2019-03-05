$fileA = "S:\TestFileA.txt"

$fileB = "E:\TestFileB.txt"

$hashA = Get-FileHash -Path $fileA -Algorithm MD5
$hashB = Get-FileHash -Path $fileB -Algorithm MD5

Write-Host '### Hash file A ###' -NoNewLine
$hashA | Format-List
Write-Host '### Hash file B ###' -NoNewline
$hashB | Format-List

if ($hashA.Hash -eq $hashB.Hash) {
    Write-Host 'Get-FileHash results are consistent' -ForegroundColor Green
} else {
	Write-Host 'Get-FileHash results are inconsistent!!' -ForegroundColor Red
}