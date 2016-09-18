#
# NewKeyVaultForAzureRMTemplateDeployment.ps1
#

#Requires -Module AzureRM.Profile
#Requires -Module AzureRM.KeyVault

#Login and Select the default subscription if needed
#Login-AzureRmAccount
#Select-AzureRmSubscription -SubscriptionName 'subscription name'

#Change the values below before running the script
$VaultName = 'myvault'             #Globally Unique Name of the KeyVault
$VaultLocation = 'East US'         #Location of the KeyVault
$ResourceGroupName = 'vaults'      #Name of the resource group for the vault
$ResourceGroupLocation = 'East US' #Location of the resource group if it needs to be created

New-AzureRmResourceGroup -Name $ResourceGroupName -Location $ResourceGroupLocation -Force

New-AzureRmKeyVault -VaultName $VaultName -ResourceGroupName $ResourceGroupName -Location $VaultLocation -EnabledForTemplateDeployment