param automationAccounts_aa_automation_shared_itn_name string = 'aa-automation-shared-itn'

resource automationAccounts_aa_automation_shared_itn_name_resource 'Microsoft.Automation/automationAccounts@2023-11-01' = {
  name: automationAccounts_aa_automation_shared_itn_name
  location: 'italynorth'
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    publicNetworkAccess: true
    disableLocalAuth: false
    sku: {
      name: 'Basic'
    }
    encryption: {
      keySource: 'Microsoft.Automation'
      identity: {}
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Azure 'Microsoft.Automation/automationAccounts/connectionTypes@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Azure'
  properties: {
    isGlobal: true
    fieldDefinitions: {
      AutomationCertificateName: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
      SubscriptionID: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureClassicCertificate 'Microsoft.Automation/automationAccounts/connectionTypes@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureClassicCertificate'
  properties: {
    isGlobal: true
    fieldDefinitions: {
      SubscriptionName: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
      SubscriptionId: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
      CertificateAssetName: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureServicePrincipal 'Microsoft.Automation/automationAccounts/connectionTypes@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureServicePrincipal'
  properties: {
    isGlobal: true
    fieldDefinitions: {
      ApplicationId: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
      TenantId: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
      CertificateThumbprint: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
      SubscriptionId: {
        isEncrypted: false
        isOptional: false
        type: 'System.String'
      }
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_fcb42679_d3fc_4388_a3f5_e9843bce6398 'Microsoft.Automation/automationAccounts/jobs@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'fcb42679-d3fc-4388-a3f5-e9843bce6398'
  properties: {
    runbook: {
      name: 'Start-Stop-Firewall'
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_SCH_3982013f_1449_4613_978b_43ac7f7294b9_f3c948b7_493a_4081_97f9_96879ee929cf_638811072000000000 'Microsoft.Automation/automationAccounts/jobs@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'SCH_3982013f-1449-4613-978b-43ac7f7294b9_f3c948b7-493a-4081-97f9-96879ee929cf_638811072000000000'
  properties: {
    runbook: {
      name: 'Start-Stop-Firewall'
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_3982013f_1449_4613_978b_43ac7f7294b9 'Microsoft.Automation/automationAccounts/jobSchedules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: '3982013f-1449-4613-978b-43ac7f7294b9'
  properties: {
    runbook: {
      name: 'Start-Stop-Firewall'
    }
    schedule: {
      name: 'Stop-Firewall'
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_98cc4846_2295_4a51_9ea3_5cf435464815 'Microsoft.Automation/automationAccounts/jobSchedules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: '98cc4846-2295-4a51-9ea3-5cf435464815'
  properties: {
    runbook: {
      name: 'Start-Stop-Firewall'
    }
    schedule: {
      name: 'Start-Firewall'
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AuditPolicyDsc 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AuditPolicyDsc'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Accounts 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Accounts'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Advisor 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Advisor'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Aks 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Aks'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_AnalysisServices 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.AnalysisServices'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ApiManagement 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ApiManagement'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_App 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.App'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_AppConfiguration 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.AppConfiguration'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ApplicationInsights 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ApplicationInsights'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ArcResourceBridge 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ArcResourceBridge'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Attestation 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Attestation'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Automanage 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Automanage'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Automation 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Automation'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Batch 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Batch'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Billing 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Billing'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Cdn 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Cdn'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_CloudService 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.CloudService'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_CognitiveServices 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.CognitiveServices'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Compute 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Compute'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ConfidentialLedger 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ConfidentialLedger'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ContainerInstance 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ContainerInstance'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ContainerRegistry 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ContainerRegistry'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_CosmosDB 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.CosmosDB'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DataBoxEdge 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataBoxEdge'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Databricks 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Databricks'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DataFactory 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataFactory'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DataLakeAnalytics 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataLakeAnalytics'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DataLakeStore 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataLakeStore'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DataProtection 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataProtection'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DataShare 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataShare'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DeploymentManager 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DeploymentManager'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DesktopVirtualization 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DesktopVirtualization'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DevCenter 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DevCenter'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_DevTestLabs 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DevTestLabs'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Dns 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Dns'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_EventGrid 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.EventGrid'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_EventHub 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.EventHub'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_FrontDoor 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.FrontDoor'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Functions 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Functions'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_HDInsight 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.HDInsight'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_HealthcareApis 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.HealthcareApis'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_IotHub 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.IotHub'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_KeyVault 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.KeyVault'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Kusto 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Kusto'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_LoadTesting 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.LoadTesting'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_LogicApp 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.LogicApp'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_MachineLearning 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.MachineLearning'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_MachineLearningServices 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.MachineLearningServices'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Maintenance 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Maintenance'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ManagedServiceIdentity 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ManagedServiceIdentity'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ManagedServices 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ManagedServices'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_MarketplaceOrdering 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.MarketplaceOrdering'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Media 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Media'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Migrate 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Migrate'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Monitor 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Monitor'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_MySql 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.MySql'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Network 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Network'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_NetworkCloud 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.NetworkCloud'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_NotificationHubs 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.NotificationHubs'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_OperationalInsights 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.OperationalInsights'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_PolicyInsights 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.PolicyInsights'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_PostgreSql 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.PostgreSql'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_PowerBIEmbedded 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.PowerBIEmbedded'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_PrivateDns 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.PrivateDns'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_RecoveryServices 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.RecoveryServices'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_RedisCache 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.RedisCache'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_RedisEnterpriseCache 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.RedisEnterpriseCache'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Relay 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Relay'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ResourceMover 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ResourceMover'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Resources 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Resources'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Security 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Security'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_SecurityInsights 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.SecurityInsights'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ServiceBus 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ServiceBus'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_ServiceFabric 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ServiceFabric'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_SignalR 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.SignalR'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Sql 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Sql'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_SqlVirtualMachine 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.SqlVirtualMachine'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_StackHCI 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.StackHCI'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Storage 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Storage'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_StorageMover 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.StorageMover'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_StorageSync 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.StorageSync'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_StreamAnalytics 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.StreamAnalytics'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Support 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Support'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Synapse 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Synapse'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_TrafficManager 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.TrafficManager'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Az_Websites 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Websites'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_modules_automationAccounts_aa_automation_shared_itn_name_Azure 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Azure'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Azure_Storage 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Azure.Storage'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureRM_Automation 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureRM.Automation'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureRM_Compute 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureRM.Compute'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureRM_profile 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureRM.profile'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureRM_Resources 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureRM.Resources'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureRM_Sql 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureRM.Sql'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureRM_Storage 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureRM.Storage'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_ComputerManagementDsc 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'ComputerManagementDsc'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_GPRegistryPolicyParser 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'GPRegistryPolicyParser'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Microsoft_PowerShell_Core 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Microsoft.PowerShell.Core'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Microsoft_PowerShell_Diagnostics 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Microsoft.PowerShell.Diagnostics'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Microsoft_PowerShell_Management 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Microsoft.PowerShell.Management'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Microsoft_PowerShell_Security 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Microsoft.PowerShell.Security'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Microsoft_PowerShell_Utility 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Microsoft.PowerShell.Utility'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Microsoft_WSMan_Management 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Microsoft.WSMan.Management'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Orchestrator_AssetManagement_Cmdlets 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Orchestrator.AssetManagement.Cmdlets'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_PSDscResources 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'PSDscResources'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_SecurityPolicyDsc 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'SecurityPolicyDsc'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_StateConfigCompositeResources 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'StateConfigCompositeResources'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_xDSCDomainjoin 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'xDSCDomainjoin'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_xPowerShellExecutionPolicy 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'xPowerShellExecutionPolicy'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_xRemoteDesktopAdmin 'Microsoft.Automation/automationAccounts/modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'xRemoteDesktopAdmin'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Accounts 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Accounts'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Advisor 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Advisor'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Aks 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Aks'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_AnalysisServices 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.AnalysisServices'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ApiManagement 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ApiManagement'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_App 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.App'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_AppConfiguration 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.AppConfiguration'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ApplicationInsights 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ApplicationInsights'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ArcResourceBridge 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ArcResourceBridge'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Attestation 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Attestation'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Automanage 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Automanage'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Automation 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Automation'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Batch 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Batch'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Billing 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Billing'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Cdn 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Cdn'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_CloudService 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.CloudService'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_CognitiveServices 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.CognitiveServices'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Compute 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Compute'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ConfidentialLedger 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ConfidentialLedger'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ContainerInstance 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ContainerInstance'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ContainerRegistry 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ContainerRegistry'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_CosmosDB 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.CosmosDB'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DataBoxEdge 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataBoxEdge'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Databricks 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Databricks'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DataFactory 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataFactory'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DataLakeAnalytics 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataLakeAnalytics'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DataLakeStore 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataLakeStore'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DataProtection 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataProtection'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DataShare 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DataShare'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DeploymentManager 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DeploymentManager'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DesktopVirtualization 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DesktopVirtualization'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DevCenter 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DevCenter'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_DevTestLabs 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.DevTestLabs'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Dns 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Dns'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_EventGrid 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.EventGrid'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_EventHub 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.EventHub'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_FrontDoor 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.FrontDoor'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Functions 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Functions'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_HDInsight 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.HDInsight'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_HealthcareApis 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.HealthcareApis'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_IotHub 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.IotHub'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_KeyVault 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.KeyVault'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Kusto 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Kusto'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_LoadTesting 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.LoadTesting'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_LogicApp 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.LogicApp'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_MachineLearning 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.MachineLearning'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_MachineLearningServices 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.MachineLearningServices'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Maintenance 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Maintenance'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ManagedServiceIdentity 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ManagedServiceIdentity'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ManagedServices 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ManagedServices'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_MarketplaceOrdering 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.MarketplaceOrdering'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Media 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Media'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Migrate 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Migrate'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Monitor 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Monitor'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_MySql 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.MySql'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Network 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Network'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_NetworkCloud 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.NetworkCloud'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_NotificationHubs 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.NotificationHubs'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_OperationalInsights 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.OperationalInsights'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_PolicyInsights 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.PolicyInsights'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_PostgreSql 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.PostgreSql'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_PowerBIEmbedded 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.PowerBIEmbedded'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_PrivateDns 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.PrivateDns'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_RecoveryServices 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.RecoveryServices'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_RedisCache 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.RedisCache'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_RedisEnterpriseCache 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.RedisEnterpriseCache'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Relay 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Relay'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ResourceMover 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ResourceMover'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Resources 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Resources'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Security 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Security'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_SecurityInsights 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.SecurityInsights'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ServiceBus 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ServiceBus'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_ServiceFabric 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.ServiceFabric'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_SignalR 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.SignalR'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Sql 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Sql'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_SqlVirtualMachine 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.SqlVirtualMachine'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_StackHCI 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.StackHCI'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Storage 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Storage'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_StorageMover 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.StorageMover'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_StorageSync 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.StorageSync'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_StreamAnalytics 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.StreamAnalytics'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Support 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Support'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Synapse 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Synapse'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_TrafficManager 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.TrafficManager'
  properties: {
    contentLink: {}
  }
}

resource Microsoft_Automation_automationAccounts_powerShell72Modules_automationAccounts_aa_automation_shared_itn_name_Az_Websites 'Microsoft.Automation/automationAccounts/powerShell72Modules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Az.Websites'
  properties: {
    contentLink: {}
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureAutomationTutorialWithIdentity 'Microsoft.Automation/automationAccounts/runbooks@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureAutomationTutorialWithIdentity'
  location: 'italynorth'
  properties: {
    runbookType: 'PowerShell'
    logVerbose: false
    logProgress: false
    logActivityTrace: 0
  }
}

resource automationAccounts_aa_automation_shared_itn_name_AzureAutomationTutorialWithIdentityGraphical 'Microsoft.Automation/automationAccounts/runbooks@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'AzureAutomationTutorialWithIdentityGraphical'
  location: 'italynorth'
  properties: {
    runbookType: 'GraphPowerShell'
    logVerbose: false
    logProgress: false
    logActivityTrace: 0
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Start_Stop_Firewall 'Microsoft.Automation/automationAccounts/runbooks@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Start-Stop-Firewall'
  location: 'italynorth'
  properties: {
    runbookType: 'PowerShell72'
    logVerbose: false
    logProgress: false
    logActivityTrace: 0
  }
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1 'Microsoft.Automation/automationAccounts/runtimeEnvironments@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'PowerShell-5.1'
  location: 'italynorth'
  properties: {
    runtime: {
      language: 'PowerShell'
      version: '5.1'
    }
    defaultPackages: {
      az: '11.2.0'
    }
    description: 'System-generated Runtime Environment for your Automation account with Runtime language: PowerShell & Runtime version: 5.1. It automatically populates Packages defined for PowerShell 5.1 runtime version in your Automation account. This Runtime environment is non-editable. '
  }
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_7_1 'Microsoft.Automation/automationAccounts/runtimeEnvironments@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'PowerShell-7.1'
  location: 'italynorth'
  properties: {
    runtime: {
      language: 'PowerShell'
      version: '7.1'
    }
    defaultPackages: {
      az: '9.6.0'
    }
    description: 'System-generated Runtime Environment for your Automation account with Runtime language: PowerShell & Runtime version: 7.1. It automatically populates Packages defined for PowerShell 7.1 runtime version in your Automation account. This Runtime environment is non-editable. '
  }
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_7_2 'Microsoft.Automation/automationAccounts/runtimeEnvironments@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'PowerShell-7.2'
  location: 'italynorth'
  properties: {
    runtime: {
      language: 'PowerShell'
      version: '7.2'
    }
    defaultPackages: {
      az: '11.2.0'
      'azure cli': '2.56.0'
    }
    description: 'System-generated Runtime Environment for your Automation account with Runtime language: PowerShell & Runtime version: 7.2. It automatically populates Packages defined for PowerShell 7.2 runtime version in your Automation account. This Runtime environment is non-editable. '
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Python_2_7 'Microsoft.Automation/automationAccounts/runtimeEnvironments@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Python-2.7'
  location: 'italynorth'
  properties: {
    runtime: {
      language: 'Python'
      version: '2.7'
    }
    description: 'System-generated Runtime Environment for your Automation account with Runtime language: Python & Runtime version: 2.7. It automatically populates Packages defined for Python 2.7 runtime version in your Automation account. This Runtime environment is non-editable. '
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Python_3_10 'Microsoft.Automation/automationAccounts/runtimeEnvironments@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Python-3.10'
  location: 'italynorth'
  properties: {
    runtime: {
      language: 'Python'
      version: '3.10'
    }
    description: 'System-generated Runtime Environment for your Automation account with Runtime language: Python & Runtime version: 3.10. It automatically populates Packages defined for Python 3.10 runtime version in your Automation account. This Runtime environment is non-editable. '
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Python_3_8 'Microsoft.Automation/automationAccounts/runtimeEnvironments@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Python-3.8'
  location: 'italynorth'
  properties: {
    runtime: {
      language: 'Python'
      version: '3.8'
    }
    description: 'System-generated Runtime Environment for your Automation account with Runtime language: Python & Runtime version: 3.8. It automatically populates Packages defined for Python 3.8 runtime version in your Automation account. This Runtime environment is non-editable. '
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Start_Firewall 'Microsoft.Automation/automationAccounts/schedules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Start-Firewall'
  properties: {
    startTime: '2025-04-25T08:30:00+02:00'
    expiryTime: '9999-12-31T23:59:59.9999999+00:00'
    interval: 1
    frequency: 'Week'
    timeZone: 'Europe/Rome'
    advancedSchedule: {
      weekDays: [
        'Monday'
        'Tuesday'
        'Wednesday'
        'Thursday'
        'Friday'
      ]
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_Stop_Firewall 'Microsoft.Automation/automationAccounts/schedules@2023-11-01' = {
  parent: automationAccounts_aa_automation_shared_itn_name_resource
  name: 'Stop-Firewall'
  properties: {
    startTime: '2025-04-24T18:00:00+02:00'
    expiryTime: '9999-12-31T23:59:59.9999999+00:00'
    interval: 1
    frequency: 'Week'
    timeZone: 'Europe/Rome'
    advancedSchedule: {
      weekDays: [
        'Monday'
        'Tuesday'
        'Wednesday'
        'Thursday'
        'Friday'
      ]
    }
  }
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_AuditPolicyDsc 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'AuditPolicyDsc'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Azure 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Azure'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Azure_Storage 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Azure.Storage'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_AzureRM_Automation 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'AzureRM.Automation'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_AzureRM_Compute 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'AzureRM.Compute'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_AzureRM_profile 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'AzureRM.profile'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_AzureRM_Resources 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'AzureRM.Resources'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_AzureRM_Sql 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'AzureRM.Sql'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_AzureRM_Storage 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'AzureRM.Storage'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_ComputerManagementDsc 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'ComputerManagementDsc'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_GPRegistryPolicyParser 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'GPRegistryPolicyParser'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Microsoft_PowerShell_Core 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Microsoft.PowerShell.Core'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Microsoft_PowerShell_Diagnostics 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Microsoft.PowerShell.Diagnostics'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Microsoft_PowerShell_Management 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Microsoft.PowerShell.Management'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Microsoft_PowerShell_Security 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Microsoft.PowerShell.Security'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Microsoft_PowerShell_Utility 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Microsoft.PowerShell.Utility'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Microsoft_WSMan_Management 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Microsoft.WSMan.Management'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_Orchestrator_AssetManagement_Cmdlets 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'Orchestrator.AssetManagement.Cmdlets'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_7_1_Orchestrator_AssetManagement_Cmdlets 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_7_1
  name: 'Orchestrator.AssetManagement.Cmdlets'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_PSDscResources 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'PSDscResources'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_SecurityPolicyDsc 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'SecurityPolicyDsc'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_StateConfigCompositeResources 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'StateConfigCompositeResources'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_xDSCDomainjoin 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'xDSCDomainjoin'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_xPowerShellExecutionPolicy 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'xPowerShellExecutionPolicy'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}

resource automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1_xRemoteDesktopAdmin 'Microsoft.Automation/automationAccounts/runtimeEnvironments/packages@2023-05-15-preview' = {
  parent: automationAccounts_aa_automation_shared_itn_name_PowerShell_5_1
  name: 'xRemoteDesktopAdmin'
  location: 'italynorth'
  properties: {
    contentLink: {}
  }
  dependsOn: [
    automationAccounts_aa_automation_shared_itn_name_resource
  ]
}
