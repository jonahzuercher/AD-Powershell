$anz = Read-Host "Anz zu verschiebende User"
for($i = 0; $i -lt $anz; $i++)
{
    $username = Read-Host "Username"
    $distinguishedName = Get-ADUser $username
    $distinguishedName = $distinguishedName.DistinguishedName
    $Path = Read-Host "Path"

    Move-ADObject -Identity $distinguishedName -TargetPath $Path
}