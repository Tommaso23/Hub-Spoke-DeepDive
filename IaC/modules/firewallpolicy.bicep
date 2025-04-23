param fwPolicyName string
param location string
param fwTier string = 'Standard'

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

output firewallPolicyId string = firewallPolicy.id
