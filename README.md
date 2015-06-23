# obanaction

今回はvagrant使用しないのでローカルインストールで  
rubyのバージョンは`2.2.0`を使用する

## Gemインストール
```
bin/bundle --path vendor/bundle
```
`.bundle`の設定が効いているので`--path vendor/bundle`省略可

## マイグレーション
```
bin/rake db:migrete
```

### 初期化
```
bin/rake db:migrete:reset
```

## サーバ起動
```
bin/rails s
```
