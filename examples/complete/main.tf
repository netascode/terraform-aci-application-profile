module "aci_application_profile" {
  source  = "netascode/application-profile/aci"
  version = ">= 0.0.1"

  tenant      = "ABC"
  name        = "AP1"
  alias       = "AP1-ALIAS"
  description = "My Description"
}
