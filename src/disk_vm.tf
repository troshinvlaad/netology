# Создание трех дисков размером 1 Гб
resource "yandex_compute_disk" "additional_disks" {
  count = 3

  name     = "additional-disk-${count.index + 1}"
  zone     = var.default_zone
  size     = 1
}

# Создание виртуальной машины с именем "storage"
resource "yandex_compute_instance" "storage" {
  name        = "storage"
  platform_id = var.vm_storage_platform_id

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      size   = 10
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    "ssh-keys" = local.ssh_key
  }

  # Подключение дополнительных дисков
  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.additional_disks

    content {
      disk_id = secondary_disk.value.id
      auto_delete = true
    }
  }
}