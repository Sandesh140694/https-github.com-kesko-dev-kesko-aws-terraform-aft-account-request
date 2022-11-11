module "Kesko-Common" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-kesko-common@tietoevry.com"
    AccountName               = "Kesko-Common"
    ManagedOrganizationalUnit = "Transitional"
    SSOUserEmail              = "ext.victor.morales@kesko.fi"
    SSOUserFirstName          = "Victor"
    SSOUserLastName           = "Morales"
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

  account_customizations_name = ""
}
