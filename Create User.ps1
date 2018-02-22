$anz = Read-Host "Anzahl User"
For ($i = 0; $i -lt $anz; $i++)
{
    $name = Read-Host "Name"
    $displayname = Read-Host "Displayname"
    $GivenName = Read-Host "GivenName"
    $Surname = Read-Host "Surname"
    $Path = Read-Host "Path"

    New-ADUser -Name $name -Displayname $displayname -GivenName $GivenName -Surname $Surname -Path $Path
}