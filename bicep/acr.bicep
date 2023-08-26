param name string
param location string = resourceGroup().location

resource acr 'Microsoft.ContainerRegistry/registries@2021-09-01' = {
  name: name
  location: location
  sku: {
    name: 'Standard'
  }
  properties: {
    adminUserEnabled: true
    anonymousPullEnabled: true
  }
}

output acrLoginServer string = acr.properties.loginServer
output acrName string = acr.name