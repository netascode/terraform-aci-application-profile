output "dn" {
  value       = aci_rest.fvAp.id
  description = "Distinguished name of `fvAp` object"
}

output "name" {
  value       = aci_rest.fvAp.content.name
  description = "Application profile name"
}
