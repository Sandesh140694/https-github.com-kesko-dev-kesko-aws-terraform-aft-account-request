module "kesko-integration-nonprod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.account5@kesko.fi"
    AccountName               = "Kesko-integration-nonprod"
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
    group = "non-prod"
  }

  account_customizations_name = "integration-nonprod"
}
