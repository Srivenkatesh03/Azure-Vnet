subscription_id = "YOUR-SUBSCRIPTION-ID"

location = "Central India"

resource_group_name = "rg-dev"

vnet_name = "vnet-dev"

vnet_address_space = [
  "10.10.0.0/16"
]

subnets = {
  snet-web = {
    address_prefixes = [
      "10.10.1.0/24"
    ]
  }

  snet-app = {
    address_prefixes = [
      "10.10.2.0/24"
    ]
  }

  snet-db = {
    address_prefixes = [
      "10.10.3.0/24"
    ]
  }
}

tags = {
  Environment = "dev"
  Project     = "client-project"
  ManagedBy   = "Terraform"
}