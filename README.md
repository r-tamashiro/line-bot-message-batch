# docker-compose バッチ

docker-compose を使ってLINE Messageを配信するだけのバッチ処理

## usage

1. mv dokcer-compose-sampel.yml dockeer-compose.yml
2. LINE_BOT_CHANNEL_SECRETの設定
3. LINE_BOT_ACCESS_TOKENの設定
4. LINE_TOの設定
5. バッチコマンド実行

```
docker-compose run --rm -T --name `uuidgen` batch_iphonex message.rb
```
