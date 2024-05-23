Connect-AzAccount

$RG = "JuniorCloudDevOps"
$ASP = "AppServicePlan"
$newWebApp = "myWebApp5"
$location = "West Europe"

# Create the Web App
New-AzWebApp -ResourceGroupName $RG `
             -Name $newWebApp `
             -Location $location `
             -AppServicePlan $ASP

Write-Output "Web App $newWebAppName created successfully."
