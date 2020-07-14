$AllLicensingPlans = Get-MsolAccountSku
for($i = 0; $i -lt $AllLicensingPlans.Count; $i++)
{
    $O365Licences = New-MsolLicenseOptions -AccountSkuId $AllLicensingPlans[$i].AccountSkuId -DisabledPlans "MCOSTANDARD"
    Set-MsolUserLicense -UserPrincipalName First.Last@example.com -LicenseOptions $O365Licences
}
