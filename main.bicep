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
  routeTableId: ''
}

var spoke2Subnet = {
  subnetAddrPrefix: spoke2SubnetAddrPrefix
  subnetName: 'snet-win-vms'
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
module hubResourceGroup './modules/resourcegroup.bicep' = {
  name: 'rg-hub-test-itn'
  params: {
    rgName: hubRGName
    location: location
  }
}

module spoke1ResourceGroup './modules/resourcegroup.bicep' = {
  name: 'rg-spoke1-test-itn'
  params: {
    rgName: spoke1RGName
    location: location
  }
}

module spoke2ResourceGroup './modules/resourcegroup.bicep' = {
  name: 'rg-spoke2-test-itn'
  params: {
    rgName: spoke2RGName
    location: location
  }
}

/*VIRTUAL NETWORKS*/
module hubVnet './modules/virtualnetwork.bicep' = {
  name: 'vnet-hub-test-itn'
  scope: resourceGroup(hubRGName)
  params: {
    vnetName: hubVnetName
    vnetAddrPrefix: hubVnetAddrPrefix
    location: location
    subnets: [hubSubnet]
  }
  dependsOn: [
    hubResourceGroup
  ]
}

module spoke1Vnet './modules/virtualnetwork.bicep' = {
  name: 'vnet-spoke1-test-itn'
  scope: resourceGroup(spoke1RGName)
  params: {
    vnetName: spoke1VnetName
    vnetAddrPrefix: spoke1VnetAddrPrefix
    location: location
    subnets: [spoke1Subnet]
  }
  dependsOn: [
    spoke1ResourceGroup
  ]
}

module spoke2Vnet './modules/virtualnetwork.bicep' = {
  name: 'vnet-spoke2-test-itn'
  scope: resourceGroup(spoke2RGName)
  params: {
    vnetName: spoke2VnetName
    vnetAddrPrefix: spoke2VnetAddrPrefix
    location: location
    subnets: [spoke2Subnet]
  }
  dependsOn: [
    spoke2ResourceGroup
  ]
}
