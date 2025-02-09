output "vm_web_info" {
  description = "Информация о веб ВМ"
  value = {
    instance_name = yandex_compute_instance.platform.name
    external_ip   = yandex_compute_instance.platform.network_interface[0].nat_ip_address
  }
}

output "vm_db_info" {
  description = "Информация о ВМ базы данных"
  value = {
    instance_name = yandex_compute_instance.db.name
    external_ip   = yandex_compute_instance.db.network_interface[0].nat_ip_address
  }
}