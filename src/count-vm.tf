resource "yandex_compute_instance" "web" {
  count        = 2
  name         = "web-${count.index + 1}"  # Создаем имена web-1 и web-2
  platform_id  = var.vm_web_platform_id

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
    security_group_ids = [var.security_group_id]
  }

  metadata = {
    "ssh-keys" = local.ssh_key
  }
}

data "yandex_compute_image" "ubuntu" {
  family = var.vm_web_image_family
}