$anz = Read-Host "Anzahl Gruppen"
For ($i = 0; $i -lt $anz; $i++)
{
    $gruppenname = Read-Host "Gruppenname"
    $Path = Read-Host "Path"
    while ($true) 
    {
        $GroupScope = Read-Host "(D)omain Local / (G)lobal / (U)niversal"

        if ($GroupScope.ToLower() -match "d") 
        {
            $GroupScope = "Domain Local"
            break
        }
        elseIf ($GroupScope.ToLower() -match "g") 
        {
            $GroupScope = "Global"
            break
        }
        elseIf ($GroupScope.ToLower() -match "u") 
        {
            $GroupScope = "Universal"
            break
        }
        else {Write-Host "Ungültig!"}
    }
    while ($true)
    {
        $GroupCategory = Read-Host "(S)ecurity / (D)istribution"

        if ($GroupCategory.ToLower() -match "s")
        {
            $GroupCategory = "Security"
            break
        }
        if ($GroupCategory.ToLower() -match "d")
        {
            $GroupCategory = "Distribution"
        }
    }

    New-ADGroup $gruppenname -Path $Path -GroupScope $GroupScope -GroupCategory $GroupCategory

}