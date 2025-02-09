vms_resources = {
  web = {
    cores         = 2
    memory        = 1
    core_fraction = 20
  },
  db = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
}

# terraform.tfvars

metadata = {
  serial-port-enable = 1
  ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOQz3Yj8zg2ilN0HJfb2wC8CxrJM1EknAMKlEryjnEmS troshin_vlad@list.ru"
}