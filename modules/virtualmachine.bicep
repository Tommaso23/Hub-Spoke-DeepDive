param location string
param virtualMachineName string
param networkInterfaceName string = 'nic-${virtualMachineName}'
param osDiskTtype string = 'Standard_LRS'
param virtualMachineSize string = 'Standard_B2s'
param adminUsername string
@secure()
param adminPassword string
param subnetId string
param publicIpId string
param computerName string
param dataDisk array
param privateIPAllocationMethod string = 'Dynamic'
param privateIPAddress string = ''

resource networkInterface 'Microsoft.Network/networkInterfaces@2022-05-01' = {
  name: networkInterfaceName
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          privateIPAllocationMethod: privateIPAllocationMethod
          privateIPAddress: privateIPAllocationMethod == 'Static' ? privateIPAddress : null
          subnet: {
            id: subnetId
          }
          publicIPAddres: publicIpId == '' ? null : {
            id: publicIpId
          }
        }
      }
    ]
  }
}


