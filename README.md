## About



## User Stories



## ERD



## Links

- Front-end repo:
- Heroku:
- Website:

### Authorization

 Verb  |      URI Pattern       | Controller#Action
:----: | :--------------------: | :---------------:
 POST  |       `/sign-up`       |  `users#signup`
 POST  |       `/sign-in`       |  `users#signin`
PATCH  | `/change-password/:id` | `users#changepw`
DELETE |    `/sign-out/:id`     |  `users#signout`

#### POST / sign-up
```sh
EMAIL="m" PASSWORD="m" PASSWORD_CONFIRMATION="m" sh scripts/sign-up.sh
```
```sh
HTTP/1.1 201 Created
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"82184201ead553927771f96f8352798c"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fb93b1ef-167c-4ea4-a369-bbb2f86dddec
X-Runtime: 10.975838
Vary: Origin
Transfer-Encoding: chunked
```
```md
{"user":{"id":1,"email":"m"}}
```

#### POST / sign-in
```sh
EMAIL="m" PASSWORD="m" PASSWORD_CONFIRMATION="m" sh scripts/sign-in.sh
```
```sh
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: application/json; charset=utf-8
ETag: W/"b2c2f45bd912994ba95d46b1931d7229"
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 82dd4a53-3949-46db-823c-873270fb80c3
X-Runtime: 0.223154
Vary: Origin
Transfer-Encoding: chunked
```
```md
{"user":{"id":1,"email":"m","token":"BAhJIiVjYjE3OTEyNmU2MmRiZWJiZGMxYzVjYjRmM2Q2YTA1ZAY6BkVG--33bf2e33670b0c1e457bdd3fd14d475119486e48"}}
```

#### PATCH / change-password
```sh
ID=1 TOKEN="BAhJIiVjYjE3OTEyNmU2MmRiZWJiZGMxYzVjYjRmM2Q2YTA1ZAY6BkVG--33bf2e33670b0c1e457bdd3fd14d475119486e48" OLDPW="m" NEWPW="o" sh scripts/change-password.sh
```
```sh
HTTP/1.1 204 No Content
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Cache-Control: no-cache
X-Request-Id: 30988231-160a-4045-956b-f031c07cfc9d
X-Runtime: 0.368670
Vary: Origin
```

#### DELETE / sign-out
```sh
ID=1 TOKEN="BAhJIiVjYjE3OTEyNmU2MmRiZWJiZGMxYzVjYjRmM2Q2YTA1ZAY6BkVG--33bf2e33670b0c1e457bdd3fd14d475119486e48" sh scripts/sign-out.sh
```
```sh
HTTP/1.1 204 No Content
X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Cache-Control: no-cache
X-Request-Id: c1622fb6-b228-49bd-ae66-9f01590bdc50
X-Runtime: 0.029252
Vary: Origin
```
