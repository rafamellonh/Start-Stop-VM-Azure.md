Param(
  [Parameter(Mandatory = $true)]
  [String]
  $TagName,
  [Parameter(Mandatory = $true)]
     
  [String]
  $TagValue,
  [Parameter(Mandatory = $true)]
  [Boolean]
  $Shutdown
)

# Autentication in Azure

## Ensures you do not inherit an AzContext in your runbook
Disable-AzContextAutosave -Scope Process

## Connect to Azure with System-assigned managed identity
$AzureContext = (Connect-AzAccount -Identity).context
#Write-Output -InputObject $AzureContext

## Set and store context
$AzureContext = Set-AzContext -SubscriptionName $AzureContext.Subscription -DefaultProfile $AzureContext
#Write-Output -InputObject $AzureContext

## Start and Stop VMs

  $vms = Get-AzResource -TagName $TagName -TagValue $TagValue | Where-Object -FilterScript {
    $_.ResourceType -like 'Microsoft.Compute/virtualMachines' 
  }

  Foreach ($vm in $vms) 
  {
    if ($Shutdown -eq $true) 
    {
      Write-Output -InputObject "Stopping $($vm.Name)"        
      Stop-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName -Force
    }
    else 
    {
      Write-Output -InputObject "Starting $($vm.Name)"        
      Start-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName
    }
  }