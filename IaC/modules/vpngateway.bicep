param vpnGatewayName string
param location string
param gatewaySubnetId string
param vpnGatewayPublicIpId string
param publicCertData string



resource vpnGateway 'Microsoft.Network/virtualNetworkGateways@2023-04-01' = {
  name: vpnGatewayName
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'default'
        properties: {
          publicIPAddress: {
            id: vpnGatewayPublicIpId
          }
          subnet: {
            id: gatewaySubnetId
          }
        }
      }
    ]
    gatewayType: 'Vpn'
    vpnType: 'RouteBased'
    enableBgp: false
    sku: {
      name: 'VpnGw1AZ'
      tier: 'VpnGw1AZ'
    }
    vpnClientConfiguration: {
      vpnClientAddressPool: {
        addressPrefixes: [
          '192.168.0.0/29'
        ]
      }
      vpnClientProtocols: [
        'OpenVPN'
      ]
      vpnAuthenticationTypes: [
        'Certificate'
      ]
      vpnClientRootCertificates: [
        {
          name: 'P2SRootCertificate'
          properties: {
            publicCertData: publicCertData
          }
        }
      ]

    }
    vpnGatewayGeneration: 'Generation1'
  }
}
