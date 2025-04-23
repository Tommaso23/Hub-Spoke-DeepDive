@description('The ID of the Firewall Policy to associate with this Rule Collection Group.')
param firewallPolicyName string
param ruleCollectionGroupName string
param priority int
param ruleCollections object

resource ruleCollectionGroup 'Microsoft.Network/firewallPolicies/ruleCollectionGroups@2024-05-01' = {
  name: '${firewallPolicyName}/${ruleCollectionGroupName}'
  properties: {
    priority: priority
    ruleCollections: empty(ruleCollections) ? null : [
      ruleCollections
    ]
  }
}
