#Install-Module AzureRM
#Import-Module AzureRM

#Install-Module -Name Az -AllowClobber
#Import-Module -Name Az

#Connect-AzAccount

$starttime= get-date


$resourceGroupName = ‘testingVerhaegheO02’
$location = ‘west-europe’

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName `
    -templateUri C:\Users\olivier.verhaeghe\Desktop\webapp+sqlserver+appInsights\main.json


$stoptime = Get-Date
$time = $stoptime - $starttime
Write-Host $time

#via github
#New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName `
    #-templateUri https://raw.githubusercontent.com/testingVerhaegheO/armdeploy/master/main.json
