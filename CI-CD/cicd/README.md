# Домашнее задание к занятию 7 «Жизненный цикл ПО»

Необходимо создать собственные workflow для двух типов задач: bug и остальные типы задач. Задачи типа bug должны проходить жизненный цикл:

1. Open -> On reproduce.
2. On reproduce -> Open, Done reproduce.
3. Done reproduce -> On fix.
4. On fix -> On reproduce, Done fix.
5. Done fix -> On test.
6. On test -> On fix, Done.
7. Done -> Closed, Open.

![1](https://github.com/user-attachments/assets/b4c005bf-7237-4c8f-9945-0ca493e94cc3)


Остальные задачи должны проходить по упрощённому workflow:

1. Open -> On develop.
2. On develop -> Open, Done develop.
3. Done develop -> On test.
4. On test -> On develop, Done.
5. Done -> Closed, Open.

![2](https://github.com/user-attachments/assets/8122b27a-026c-427f-af0d-d07a19816d80)



**Что нужно сделать**

1. Создайте задачу с типом bug, попытайтесь провести его по всему workflow до Done. 
1. Создайте задачу с типом epic, к ней привяжите несколько задач с типом task, проведите их по всему workflow до Done. 
1. При проведении обеих задач по статусам используйте kanban. 
1. Верните задачи в статус Open.
1. Перейдите в Scrum, запланируйте новый спринт, состоящий из задач эпика и одного бага, стартуйте спринт, проведите задачи до состояния Closed. Закройте спринт.
2. Если всё отработалось в рамках ожидания — выгрузите схемы workflow для импорта в XML. Файлы с workflow и скриншоты workflow приложите к решению задания.

[Bug Workflow](https://github.com/troshinvlaad/netology/blob/main/CI-CD/cicd/Bug.xml)

[Other Workflow](https://github.com/troshinvlaad/netology/blob/main/CI-CD/cicd/Other.xml)


![3](https://github.com/user-attachments/assets/7c7a7074-f4a3-4c4f-8507-f763919236a9)
![4](https://github.com/user-attachments/assets/c305f96a-406f-4b77-ba72-68b65d8cff22)
