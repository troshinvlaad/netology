#Первая ВМ
variable "vm_web_name" {
  description = "Имя виртуальной машины"
  type        = string
  default     = "netology-develop-platform-web"
}

variable "vm_web_image_family" {
  description = "Семейство образа для виртуальной машины"
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "vm_web_platform_id" {
  description = "ID платформы для виртуальной машины"
  type        = string
  default     = "standard-v3"
}

/*
variable "vm_web_cores" {
  description = "Количество ядер для виртуальной машины"
  type        = number
  default     = 2
}

variable "vm_web_memory" {
  description = "Объем памяти для виртуальной машины (в ГБ)"
  type        = number
  default     = 1
}

variable "vm_web_core_fraction" {
  description = "Доля ядра для виртуальной машины"
  type        = number
  default     = 20
}
*/

#Вторая ВМ
variable "vm_db_name" {
  description = "Имя виртуальной машины базы данных"
  type        = string
  default     = "netology-develop-platform-db"
}

/*
variable "vm_db_cores" {
  description = "Количество ядер для виртуальной машины базы данных"
  type        = number
  default     = 2
}

variable "vm_db_memory" {
  description = "Объем памяти для виртуальной машины базы данных (в ГБ)"
  type        = number
  default     = 2
}

variable "vm_db_core_fraction" {
  description = "Доля ядра для виртуальной машины базы данных"
  type        = number
  default     = 20
}
*/

variable "vm_db_platform_id" {
  description = "ID платформы для виртуальной машины базы данных"
  type        = string
  default     = "standard-v3"
}

variable "vm_db_zone" {
  description = "Зона для размещения виртуальной машины базы данных"
  type        = string
  default     = "ru-central1-b"
}


variable "vms_resources" {
  description = "Ресурсы для виртуальных машин"
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
}