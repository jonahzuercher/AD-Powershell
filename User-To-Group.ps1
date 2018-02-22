$anz = Read-Host "Anzahl User zu Gruppen"
for($i = 0; $i -lt $anz; $i ++)
{
    $username = Read-Host "Username"
    $GruppeName = Read-Host "Gruppenname"

    Add-ADGroupMember -Identity $GruppeName -Members $username
}