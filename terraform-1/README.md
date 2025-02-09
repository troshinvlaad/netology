# Домашнее задание к занятию «Введение в Terraform»
## Задача 1
![image_task_1_2](https://github.com/troshinvlaad/netology/blob/main/terraform-1/image_task_1_2.PNG?raw=true) 
## Задача 2

Согласно предоставленному содержимому файла .gitignore, допустимо сохранять личную, секретную информацию (логины, пароли, ключи, токены и т.д.) в файле с именем personal.auto.tfvars.

## Задача 3

![image_task_3](https://github.com/troshinvlaad/netology/blob/main/terraform-1/image_task_3.PNG?raw=true)

## Задача 4

![image_task_4_1](https://github.com/troshinvlaad/netology/blob/main/terraform-1/image_task_4_1.PNG?raw=true)
![image_task_4_2](https://github.com/troshinvlaad/netology/blob/main/terraform-1/image_task_4_2.PNG?raw=true)

1. В Terraform каждый ресурс должен иметь два обязательных параметра: тип ресурса и имя ресурса. В данном случае, не указано имя для ресурса docker_image.
2. Имя ресурса должно начинаться с буквы или символа подчеркивания и может содержать только буквы, цифры, символы подчеркивания и дефисы. В данном случае имя 1nginx начинается с цифры, что недопустимо.
3. Некорректный ключ -> result
P.S. В наименовании контейнера будет указано секретное содержимое созданного ресурса random_password, то есть значение пароля. Чтобы этого избежать сделал следующее: name = "nginx_1"

![image_task_4_3](https://github.com/troshinvlaad/netology/blob/main/terraform-1/image_task_4_3.PNG?raw=true)

## Задача 5

![image_task_5](https://github.com/troshinvlaad/netology/blob/main/terraform-1/image_task_5.PNG?raw=true)

## Задача 6

Опасности применения ключа -auto-approve:
1. Отсутствие проверки изменений: При использовании этого ключа Terraform не запрашивает подтверждение перед применением изменений, что может привести к неожиданным последствиям.

2. Риск потери данных: Если в процессе применения изменений происходит удаление ресурсов, это может привести к потере данных или нарушению работы приложений.

3. Неправильные конфигурации: Без предварительного просмотра плана изменений можно случайно применить неправильные конфигурации, что может вызвать сбои в работе инфраструктуры.

Зачем может пригодиться данный ключ?
1. Автоматизация процессов: В CI/CD пайплайнах, где требуется автоматическое развертывание, использование -auto-approve позволяет избежать задержек, связанных с ручным подтверждением.

2. Скрипты и автоматизированные задачи: При выполнении скриптов, которые требуют применения изменений без вмешательства человека, этот ключ упрощает процесс.

## Задача 7

![image_task_7](https://github.com/troshinvlaad/netology/blob/main/terraform-1/image_task_7.PNG?raw=true)

## Задача 8

Образ nginx:latest может не быть удалён по следующим причинам:

Свойство keep_locally: Если в конфигурации Terraform для ресурса docker_image установлено свойство keep_locally = true, то образ не будет удалён даже при выполнении команды terraform destroy.

Подтверждение из документации Terraform:
Согласно документации провайдера Docker для Terraform, в разделе о ресурсе docker_image указано:

"The keep_locally argument allows you to specify whether to keep the image locally after it has been used to create containers."

Это подтверждает, что если keep_locally установлено в true, образ не будет удалён при уничтожении ресурсов.
