param vnetName string
param vnetAddressPrefix array
param location string
param subnets array



resource virtualNetwork 'Microsoft.Network/virtualNetworks@2020-11-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: vnetAddressPrefix
    }
    subnets: [for subnet in subnets: {
      name: subnet.subnetName
      properties: {
        addressPrefix: subnet.subnetAddressPrefix
        routeTable: subnet.routeTableId=='' ? null : {
          id: subnet.routeTableId
        }
      }
    }]
  }
}

output vnetId string = virtualNetwork.id
output subnets array = virtualNetwork.properties.subnets
