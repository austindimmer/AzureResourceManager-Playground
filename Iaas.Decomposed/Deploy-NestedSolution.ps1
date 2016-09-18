﻿### Define variables
{

$location = 'West Europe'
$resourceGroupName = 'Testing-AzureResourceManager-Playground'
$resourceDeploymentSolutionName = 'testing-arm-nested-deployment'
$templateBaseUri = 'https://effectivecomputing.blob.core.windows.net/testing-arm-iaas-decomposed'
$templateFile = 'azureDeploy.json'
$template = $templateBaseUri + '/' + $templateFile
$templateParametersFile = 'azureDeploy.parameters.json'
$templateParameters = $templateBaseUri + '/' + $templateParametersFile

}

### Create Resource Group
{

New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $Location `
    -Verbose -Force

}

### Deploy IaaS Solution
{

New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentSolutionName `
    -ResourceGroupName $resourceGroupName `
    -TemplateUri $template `
    -TemplateParameterUri $templateParameters `
    -Verbose -Force

}