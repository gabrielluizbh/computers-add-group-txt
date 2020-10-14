## Script de levantamento de todos os objetos computadores do Active Directory - Créditos Gabriel Luiz - www.gabrielluiz.com ##


Get-ADComputer -Filter * -Properties Name, PasswordLastSet, OperatingSystem, DNSHostName, DistinguishedName, Enabled | select Name, PasswordLastSet, OperatingSystem, DNSHostName, DistinguishedName, Enabled | Export-Csv "c:\Scripts\todososcomputadores.csv" -Encoding UTF8


<#

Referência:

https://docs.microsoft.com/en-us/powershell/module/addsadministration/get-adcomputer?view=win10-ps/?WT.mc_id=WDIT-MVP-5003815

#> 