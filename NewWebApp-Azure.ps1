# Log in to Azure Account
Connect-AzAccount

# Prompt
$subscriptionName = Read-Host "Enter the subscription name"
$resourceGroupName = Read-Host "Enter the resource group name"
$appServicePlanName = Read-Host "Enter the app service plan name"
$newWebAppName = Read-Host "Enter the new web app name"
$location = Read-Host "Enter the location"

# Set the subscription
Set-AzContext -Subscription $subscriptionName

# Create the Web App
New-AzWebApp -ResourceGroupName $resourceGroupName `
             -Name $newWebAppName `
             -Location $location `
             -AppServicePlan $appServicePlanName
