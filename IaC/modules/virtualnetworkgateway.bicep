
param virtualNetworkGatewayName string
param location string
param publicIpId string
param gatewaySubnetId string


param publicIPAddresses_pip_vgw_westeurope_externalid string = '/subscriptions/eac921ba-aa4a-44e6-958e-bb5a59b30578/resourceGroups/TomLZ-vnethub-westeurope/providers/Microsoft.Network/publicIPAddresses/pip-vgw-westeurope'
param virtualNetworks_TomLZ_hub_westeurope_externalid string = '/subscriptions/eac921ba-aa4a-44e6-958e-bb5a59b30578/resourceGroups/TomLZ-vnethub-westeurope/providers/Microsoft.Network/virtualNetworks/TomLZ-hub-westeurope'

resource vpnGateway 'Microsoft.Network/virtualNetworkGateways@2024-05-01' = {
  name: virtualNetworkGatewayName
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'vnetGatewayConfig'
        properties: {
          publicIPAddress: {
            id: publicIpId
          }
          subnet: {
            id: gatewaySubnetId
          }
        }
      }
    ]
    gatewayType: 'Vpn'
    vpnType: 'RouteBased'
    enableBgp: true
    sku: {
      name: 'VpnGw1'
      tier: 'VpnGw1'
    }
    activeActive: false
    vpnClientConfiguration: {
      vpnClientAddressPool: {
        addressPrefixes: [
          '12.11.10.0/28'
        ]
      }
      vpnClientProtocols: [
        'OpenVPN'
      ]
      rootCertificates: [
        {
          name: 'RootCert'
          properties: {
            publicCertData: 'MIIC7zCCAdegAwIBAgIQd6xON+qNu6RMbz9VRcIHBDANBgkqhkiG9w0BAQsFADAa MRgwFgYDVQQDDA9Sb290Q2VydGlmaWNhdGUwHhcNMjQxMTEyMDkwMTAxWhcNMjUx MTEyMDkyMTAxWjAaMRgwFgYDVQQDDA9Sb290Q2VydGlmaWNhdGUwggEiMA0GCSqG SIb3DQEBAQUAA4IBDwAwggEKAoIBAQD2TdcVa3zIJjuBK4uD1Rc21Bkc+UfpBzRj QRruzrRVKaPjCoAY7MwtnoZYxkY+PRjXXASh78lj4mu68KXhLXznh0jDHE87OPe3 e9blKZMHiIycz8sWr30t/T8M/A/enQygOflOPzi3/pGPtHFZ7g8TuuN94ADuCBFk +kJOYhjK9jLehqusfrixwMLI0A/46jLiHzBUbbLJBfSUERv8Ze2Wa2Fz3mHIUMdY ojc4SYgl4WfJ7KWpR4H+50kidG0ekYmZPbSW/stCldpyqsgyOLMkuI7OPL32ESmS rhu0ILew2RZ7e55Ru2r5hiOS2Y1DEx7cfoYeSqUBf/QByO7XshnZAgMBAAGjMTAv MA4GA1UdDwEB/wQEAwICBDAdBgNVHQ4EFgQU8iClGoa4l796BddYb6eglsK6rgow DQYJKoZIhvcNAQELBQADggEBAB4V6xypnbNhHinSpg2LS6FtlYTW5Y3iPFdpTSld V2s0EtJDBpLR0A8sgA/C5riRn4nFTecAreKk2k8IrSjUnolcV8XWH64BjwEOU5Kp pfn1ZW4u/igUf35YbVPwhSaFeg+09nMmV1x2uXioySsLLFbA8wg/wnt+afX7wvm8 CbMWIUIOll7ZiMNlnmBIBPo8YUhLEBKdxRHfijJaOHT3dvvNlSU9unsWLrJajBxw hiO5vvtP6/5q/FWqnWdTZaZRIpPb7h00D0jaZ+4eadWV48XiCWbX0NTNey1PImie qnXpOkk87NeFzHYCGyZOHvaFNt/Or/+xCYdhm/22RxuIAC0='
          }
        }
      ]
      vpnClientRevokedCertificates: []
      vngClientConnectionConfigurations: []
      radiusServers: []
      vpnClientIpsecPolicies: []
    }
    bgpSettings: {
      asn: 65515
      bgpPeeringAddress: '10.100.0.30'
      peerWeight: 0
      bgpPeeringAddresses: [
        {
          ipconfigurationId: '${virtualNetworkGateways_vgw_lz_westeurope_name_resource.id}/ipConfigurations/default'
          customBgpIpAddresses: []
        }
      ]
    }
    customRoutes: {
      addressPrefixes: []
    }
    vpnGatewayGeneration: 'Generation1'
    allowRemoteVnetTraffic: false
    allowVirtualWanTraffic: false
  }
}
