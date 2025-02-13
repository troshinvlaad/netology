# Создание трех дисков размером 1 Гб
resource "yandex_compute_disk" "additional_disks" {
  count = var.additional_disks_count

  name     = "additional-disk-${count.index + 1}"
  zone     = var.default_zone
  size     = var.additional_disk_size
}

# Создание виртуальной машины с именем "storage"
resource "yandex_compute_instance" "storage" {
  name        = "storage"
  platform_id = var.vm_storage_platform_id

  resources {
    cores         = var.vm_storage_cores
    memory        = var.vm_storage_memory
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      size   = var.boot_disk_size
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