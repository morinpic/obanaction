# obanaction

今回はvagrant使用しないのでローカルインストールで  
rubyのバージョンは`2.2.0`を使用する

## Gemインストール
```
bin/bundle --path vendor/bundle
```

## マイグレーション
```
bin/rake db:migrete
```

## サーバ起動
```
bin/rails s
```
