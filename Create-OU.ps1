$anz = Read-Host "Anzahl zu erstellende OUs"
for($i = 0; $i -lt $anz; $i ++)
{
    $OuName = Read-Host "Ou Name"
    $Path = Read-Host "Path"

    New-ADOrganizationalUnit $OuName -Path $Path
}