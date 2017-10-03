output "app_external_ip" {
  value = "${module.app.app_external_ip}"
}

output "dp_external_ip" {
  value = "${module.db.dp_external_ip}"
}

output "dp_internal_ip" {
  value = "${module.db.dp_internal_ip}"
}
