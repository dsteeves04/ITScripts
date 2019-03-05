$fileA = "S:\Backups\FBBuild\FBBuildD2019-03-04T131708.vbk"

$fileB = "E:\ArchivedVMs\2003 VMs\FBBuild\FBBuildD2019-03-04T131708.vbk"

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