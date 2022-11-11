module "kesko-integration-prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.account11@kesko.fi"
    AccountName               = "Kesko-integration-prod"
    ManagedOrganizationalUnit = "Transitional"
    SSOUserEmail              = "adm-ville.mantysaari@keskogroup.onmicrosoft.com"
    SSOUserFirstName          = "Ville"
    SSOUserLastName           = "Mäntysaari"
  }

  account_tags = {
    "Update deployment" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Destroy VPC due to change in specifications"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "integration-prod"
}
