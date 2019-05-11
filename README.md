# prog-tech
## Task 6
### About

#### Права администратора
https://mail.alexgryzlov.me/admin

Логин: admin@alexgryzlov.me

Пароль: 1234
#### Пользовательский интерфейс
https://mail.alexgryzlov.me

Логин: admin@alexgryzlov.me

Пароль: 1234

В ветке находятся конфиги docker-compse и mailu, Вы можете развернуть образ, заменив все вхождения ip адресса и домена на свои.

Для этого используйте:
```shell
$ docker-compose -p mailu up -d
```

### Описание выполнение задания
1. Создал droplet на [https://digitalocean.com]
2. Зарегестрировал домен на [https://namecheap.com]
3. Привязал домен к DNS серверам digitalocean'а
4. Настроил DNS записи для web-интерфейса и почты
5. Установил docker и docker-compose на droplet
6. Сконфигурировал mailu сервер https://setup.mailu.io/1.6/
7. Запустил mailu сервер
