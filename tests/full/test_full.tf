terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

resource "aci_rest" "fvTenant" {
  dn         = "uni/tn-TF"
  class_name = "fvTenant"
}

module "main" {
  source = "../.."

  tenant      = aci_rest.fvTenant.content.name
  name        = "AP1"
  alias       = "ALIAS"
  description = "DESCR"
}

data "aci_rest" "fvAp" {
  dn = module.main.dn

  depends_on = [module.main]
}

resource "test_assertions" "fvAp" {
  component = "fvAp"

  equal "name" {
    description = "name"
    got         = data.aci_rest.fvAp.content.name
    want        = "AP1"
  }

  equal "nameAlias" {
    description = "nameAlias"
    got         = data.aci_rest.fvAp.content.nameAlias
    want        = "ALIAS"
  }

  equal "descr" {
    description = "descr"
    got         = data.aci_rest.fvAp.content.descr
    want        = "DESCR"
  }
}
