targetScope = 'subscription'
param location string = deployment().location

var hubRGName = 'rg-hub-test-itn'
var spoke1RGName = 'rg-spoke1-test-itn'
var spoke2RGName = 'rg-spoke2-test-itn'

var hubVnetName = 'vnet-hub-test-itn'
var spoke1VnetName = 'vnet-spoke1-test-itn'
var spoke2VnetName = 'vnet-spoke2-test-itn'
var hubVnetAddrPrefix = ['10.0.0.0/24'] 
var spoke1VnetAddrPrefix = ['10.0.10.0/24']
var spoke2VnetAddrPrefix = ['10.0.20.0/24']

var hubSubnetAddrPrefix = '10.0.10.0/26' 
var spoke1SubnetAddrPrefix = '10.0.20.0/26'
var spoke2SubnetAddrPrefix = '10.0.30.0/26'

var hubSubnet = {
  subnetAddrPrefix: hubSubnetAddrPrefix
  subnetName: 'AzureFirewallSubnet'
  vnetName: hubVnetName
  nsgId: ''
  routeTableId: ''
}

var spoke1Subnet = {
  subnetAddrPrefix: spoke1SubnetAddrPrefix
  subnetName: 'snet-linux-vms'
  nsgId: spoke1Nsg.outputs.nsgId
  routeTableId: ''
}

var spoke2Subnet = {
  subnetAddrPrefix: spoke2SubnetAddrPrefix
  subnetName: 'snet-win-vms'
  nsgId: spoke2Nsg.outputs.nsgId
  routeTableId: ''
}

@description('username administrator for all VMs')
param adminUsername string = 'azureuser'

@description('username administrator password for all VMs')
@minLength(12)
@secure()
param adminPassword string = 'Password123?'

var vmComputerName1 = 'vm-test-itn-1'
var vmComputerName2 = 'vm-test-itn-2'
var vmComputerName3 = 'vm-test-itn-3'

var windowsPublisher = 'MicrosoftWindowsServer'
var windowsOffer = 'WindowsServer'
var windowsSku = '2022-Datacenter-azure-edition'

/*RESOURCE GROUPS*/
module
