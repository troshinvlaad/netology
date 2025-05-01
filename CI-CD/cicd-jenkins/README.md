# Домашнее задание к занятию 10 «Jenkins»

## Подготовка к выполнению

1. Создать два VM: для jenkins-master и jenkins-agent.
![1](https://github.com/user-attachments/assets/5088e08d-eed7-40c5-bec5-dd7d1310912e)

2. Установить Jenkins при помощи playbook.
3. Запустить и проверить работоспособность.
4. Сделать первоначальную настройку.
![4](https://github.com/user-attachments/assets/e3c1f167-4a9b-4b1b-983e-117a849b1d34)


## Основная часть

1. Сделать Freestyle Job, который будет запускать `molecule test` из любого вашего репозитория с ролью.
![6](https://github.com/user-attachments/assets/50d606dd-01e3-47f2-9274-71d23163a053)
![5](https://github.com/user-attachments/assets/bf70f0ab-90d8-4aa7-bae5-baedd1e75369)

2. Перенести Declarative Pipeline в репозиторий в файл `Jenkinsfile`.
![7](https://github.com/user-attachments/assets/5b8ba4dd-97d6-4030-835f-561d61a0e8eb)


3. Создать Multibranch Pipeline на запуск `Jenkinsfile` из репозитория.
![8](https://github.com/user-attachments/assets/85815ad8-86ab-41de-be38-fa9e0e0bed62)


4. Создать Scripted Pipeline, наполнить его скриптом из [pipeline]().
![9](https://github.com/user-attachments/assets/397c6033-9fc8-4319-baff-09d0d1bdcc8d)

5. Внести необходимые изменения, чтобы Pipeline запускал `ansible-playbook` без флагов `--check --diff`, если не установлен параметр при запуске джобы (prod_run = True). По умолчанию параметр имеет значение False и запускает прогон с флагами `--check --diff`.
![10](https://github.com/user-attachments/assets/e23177fe-3ae8-4169-8a39-9b8b32716897)


6. Проверить работоспособность, исправить ошибки, исправленный Pipeline вложить в репозиторий в файл `ScriptedJenkinsfile`.
![11](https://github.com/user-attachments/assets/44da9cc2-c207-4092-9239-7ef36eef2b55)
