targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2024-11-01'= {
  location: 'italynorth'
  name: 'rg-hub-test-itn'
}
