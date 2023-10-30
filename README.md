コンテナを立ち上げてappコンテナの中に入る
```
docker-compose up -d
docker-compose exec app /bin/bash
```
コンテナ内でcomposer installを実行する
```
composer install
```