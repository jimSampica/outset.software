resource staticSite 'Microsoft.Web/staticSites@2024-04-01' = {
  name: 'outset-stapp'
  location: 'centralus'
  properties: {
    buildProperties:{
      skipGithubActionWorkflowGeneration: true
    }
  }
  sku: {
    name: 'Free'
    size: 'Free'
  }

  resource customDomain 'customDomains' = {
    name: 'outset.software'
  }
}
