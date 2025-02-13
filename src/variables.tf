###cloud vars
variable "token" {
  type        = string
  default     = <token>
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  default     = "b1gudc9jbdv3q8ldl4ph"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1glpd0g6s1je9qqjrhk"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "security_group_id" {
  description = "Security Group ID"
  default     = "enp7eu40bjd5a4nu7pur"
  type        = string
}

variable "vm_web_platform_id" {
  description = "Platform ID for web VMs"
  default     = "standard-v3"
  type        = string
}

variable "vm_db_platform_id" {
  description = "Platform ID for database VMs"
  default     = "standard-v3"
  type        = string
}

variable "subnet_id" {
  description = "e9bnlli59s9ts91mfa81"
  type        = string
}

variable "vm_web_image_family" {
  description = "Семейство образа для виртуальной машины"
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "vm_storage_platform_id" {
  description = "ID платформы для виртуальной машины storage"
  default     = "standard-v3"
  type        = string
}

variable "additional_disks_count" {
  description = "Количество дополнительных дисков"
  type        = number
  default     = 3
}

variable "additional_disk_size" {
  description = "Размер дополнительных дисков в Гб"
  type        = number
  default     = 1
}

variable "boot_disk_size" {
  description = "Размер загрузочного диска в Гб"
  type        = number
  default     = 10
}

variable "vm_storage_cores" {
  description = "Количество ядер для виртуальной машины"
  type        = number
  default     = 2
}

variable "vm_storage_memory" {
  description = "Объем памяти для виртуальной машины в Гб"
  type        = number
  default     = 2
}

variable "web_instance_count" {
  description = "Количество веб-серверов"
  type        = number
  default     = 2
}

variable "web_instance_cores" {
  description = "Количество ядер для веб-серверов"
  type        = number
  default     = 2
}

variable "web_instance_memory" {
  description = "Объем памяти для веб-серверов в Гб"
  type        = number
  default     = 2
}