targetScope = 'subscription'
param location string = deployment().location

var hubRGName = 'rg-hub-test-itn'
var spoke1RGName = 'rg-spoke1-test-itn'
var spoke2RGName = 'rg-spoke2-test-itn'

var hubVnetName = 'vnet-hub-test-itn'
var spoke1VnetName = 'vnet-spoke1-test-itn'
var spoke2VnetName = 'vnet-spoke2-test-itn'
var hubVnetAddrPrefix = ['10.0.10.0/24'] 
var spoke1VnetAddrPrefix = ['10.0.20.0/24']
var spoke2VnetAddrPrefix = ['10.0.30.0/24']

var hubFirewallSubnetAddrPrefix = '10.0.10.0/26'
var hubGatewaySubnetAddrPrefix = '10.0.10.64/26'
var hubVMTestSubnetAddrPrefix = '10.0.10.128/28'
var spoke1SubnetAddrPrefix = '10.0.20.0/26'
var spoke2SubnetAddrPrefix = '10.0.30.0/26'

var hubSubnet = [
  {
    subnetAddrPrefix: hubFirewallSubnetAddrPrefix
    subnetName: 'AzureFirewallSubnet'
    vnetName: hubVnetName
    nsgId: ''
    routeTableId: ''
  }
  {
    subnetAddrPrefix: hubGatewaySubnetAddrPrefix
    subnetName: 'GatewaySubnet'
    vnetName: hubVnetName
    nsgId: ''
    routeTableId: ''
  }
  {
    subnetAddrPrefix: hubVMTestSubnetAddrPrefix
    subnetName: 'snet-hub-test-vm'
    vnetName: hubVnetName
    nsgId: ''
    routeTableId: ''
  }
]

var spoke1Subnet = {
  subnetAddrPrefix: spoke1SubnetAddrPrefix
  subnetName: 'snet-linux-vms'
  vnetName: spoke1VnetName
  nsgId: ''
  routeTableId: ''
}


@description('username administrator for all VMs')
param adminUsername string = 'azureuser'
@description('username administrator password for all VMs')
@minLength(12)
@secure()
param adminPassword string = 'Password123?'
var vmHubComputerName = 'vm-hub-itn-1'
var vmSpoke1ComputerName = 'vm-spoke1-itn-1'
var windowsPublisher = 'MicrosoftWindowsServer'
var windowsOffer = 'WindowsServer'
var windowsSku = '2022-Datacenter-azure-edition'

var fwTier = 'Standard'
var firewallPolicyName = 'afwp-hub-itn-policy'
var firewallName = 'azfw-hub-itn'


/*RESOURCE GROUPS*/
module hubResourceGroup './modules/resourcegroup.bicep' = {
  name: 'hubResourceGroup'
  params: {
    rgName: hubRGName
    location: location
  }
}

module spoke1ResourceGroup './modules/resourcegroup.bicep' = {
  name: 'spoke1ResourceGroup'
  params: {
    rgName: spoke1RGName
    location: location
  }
}

/*VIRTUAL NETWORKS*/
module hubVnet './modules/virtualnetwork.bicep' = {
  name: 'hubVnet'
  scope: resourceGroup(hubRGName)
  params: {
    vnetName: hubVnetName
    vnetAddrPrefix: hubVnetAddrPrefix
    location: location
    subnets: hubSubnet
  }
  dependsOn: [
    hubResourceGroup
  ]
}

module spoke1Vnet './modules/virtualnetwork.bicep' = {
  name: 'spoke1Vnet'
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

/*VIRTUAL MACHINES*/
module hubVM1 './modules/virtualmachine.bicep' = {
  name: 'hubVM1'
  scope: resourceGroup(hubRGName)
  params: {
    location: location
    virtualMachineName: vmHubComputerName
    adminUsername: adminUsername
    adminPassword: adminPassword
    subnetId: hubVnet.outputs.subnets[2].id 
    publicIpId: ''
    computerName: vmHubComputerName
    privateIpAddress: '10.0.10.132'
    publisher: windowsPublisher
    offer: windowsOffer
    sku: windowsSku
  }
}

module spoke1VM1 './modules/virtualmachine.bicep' = {
  name: 'spoke1VM1'
  scope: resourceGroup(spoke1RGName)
  params: {
    location: location
    virtualMachineName: vmSpoke1ComputerName
    adminUsername: adminUsername
    adminPassword: adminPassword
    subnetId: spoke1Vnet.outputs.subnets[0].id
    publicIpId: ''
    computerName: vmSpoke1ComputerName
    privateIpAddress: '10.0.20.4'
    publisher: windowsPublisher
    offer: windowsOffer
    sku: windowsSku
  }
}

/*FIEWALL*/

module firewallPublicIp './modules/publicIp.bicep' = {
  name: 'firewallPublicIp'
  scope: resourceGroup(hubRGName)
  params: {
    location: location
    publicIpAddressName: 'pip-azfw-hub-itn'
  }
  dependsOn: [
    hubResourceGroup
  ]
}

module hubFirewall './modules/firewall.bicep' = {
  name: 'hubFirewall'
  scope: resourceGroup(hubRGName)
  params: {
    fwPolicyName: firewallPolicyName
    location: location
    fwName: firewallName
    subnetId: hubVnet.outputs.subnets[0].id
    publicIpId: firewallPublicIp.outputs.ipId
    fwTier: fwTier
    enableMgmtConf: false
    mgmtSubnetId: ''
    mgmtPublicIpId: ''
  }

}
