param subnetName string
param vnetName string
param subnetAddressPrefix string
param routeTableId string

resource subnet 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  name: '${vnetName}/${subnetName}'
  properties: {
    addressPrefix: subnetAddressPrefix
    routeTable: routeTableId=='' ? null : {
      id: routeTableId
    }
  }
}

output subnetId string = subnet.id
