param fwPolicyName string
param location string
param fwName string
param subnetId string
param publicIpId string
param fwTier string
param enableMgmtConf bool
param mgmtSubnetId string
param mgmtPublicIpId string

resource firewallPolicy 'Microsoft.Network/firewallPolicies@2020-11-01' = {
  name: fwPolicyName
  location: location
  properties: {
    sku: {
      tier: fwTier
    }
    threatIntelMode: 'Alert'
  }
}

resource firewall 'Microsoft.Network/azureFirewalls@2022-07-01' = {
  name: fwName
  location: location
  properties: {
    sku: {
      name: 'AZFW_VNet'
      tier: fwTier
    }
    firewallPolicy: { 
      id: firewallPolicy.id
    }
    managementIpConfiguration: enableMgmtConf == false ? null : {
      name: 'mgmtfirewallconf'
      properties: {
        subnet: {
          id: mgmtSubnetId
        }
        publicIPAddress: {
          id: mgmtPublicIpId
        }
      } 
    }
    ipConfigurations: [
      {
        name: 'primaryfirewallconf'
        properties: {
          subnet: {
            id: subnetId
          }
          publicIPAddress: {
            id: publicIpId
          }
        }
      }
    ]
  }
}

output firewallPrivateIp string = firewall.properties.ipConfigurations[0].properties.privateIPAddress
