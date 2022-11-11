module "kesko-kruoka-backup" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.account9@kesko.fi"
    AccountName               = "Kesko-KRuoka-Backup"
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
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "kruoka-backup"
}
