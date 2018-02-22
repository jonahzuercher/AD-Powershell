$Path = Read-Host "OU-Path"
Get-ADUser -Filter * -SearchBase $Path | Enable-ADAccount