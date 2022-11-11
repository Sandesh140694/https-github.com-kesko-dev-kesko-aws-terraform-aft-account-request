module "Kesko-Picking-Prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-kesko-picking-prod@tietoevry.com"
    AccountName               = "Kesko-Picking-Prod"
    ManagedOrganizationalUnit = "Prod"
    SSOUserEmail              = "adm-ville.mantysaari@keskogroup.onmicrosoft.com"
    SSOUserFirstName          = "Ville"
    SSOUserLastName           = "Mäntysaari"
  }

  account_tags = {
    "Update deployment" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = ""
}
