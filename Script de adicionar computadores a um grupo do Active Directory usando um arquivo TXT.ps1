## Script de adicionar computadores a um grupo do Active Directory usando um arquivo TXT - Créditos Gabriel Luiz - www.gabrielluiz.com ##


# Obtenha o conteúdo do arquivo e armazene-o em uma variável chamada $ List

$List=Get-Content C:\Scripts\Computer.txt


# Adiciona os objetos computadores contidos no arquivo TXT, com os hostnames dos computadores ao Grupo Active Directory escolhido.

$List | foreach {Add-ADGroupMember -id VPN -MEMBERS (Get-ADComputer $_) }

<#

Referências:

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-content?view=powershell-7/?WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/foreach-object?view=powershell-7/?WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/addsadministration/add-adgroupmember?view=win10-ps/?WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/addsadministration/get-adcomputer?view=win10-ps/?WT.mc_id=WDIT-MVP-5003815

#>