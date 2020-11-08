# smot

## 制作背景
#### サービス概要
2020年4月に改正健康増進法により屋内の原則禁煙になりました。<br>

喫煙できる場所が限定され、明確に分煙された環境になり、<br>
国民がより健康になるための改正法のように感じますが、<br>
飲食店などの屋内で喫煙できるようにするためには専用の喫煙室を設置しなければならなくなり、<br>
その影響で喫煙可能な飲食店が大幅に減少したため、<br>
以前よりも屋外喫煙や歩きタバコのようなマナー違反が散見されるようになったと感じました。<br>

これは改正法が非喫煙者にしかフォーカスされていないからと感じ、<br>
喫煙者が喫煙できる場所を発信できるサービスがあれば、<br>
より健康的で効果的な分煙ができるのではないかと思い、<br>
喫煙ができる飲食店やカフェを探せるサービス「smot」を制作しました。<br>

#### サービス詳細
食べログのように飲食店やカフェなどの店舗情報を登録し、喫煙できる場所をひと目でわかるような情報発信サービス。

## 機能一覧
* ユーザー登録/ユーザーログイン機能（devise） 
* 店舗登録機能
* 店舗情報編集/削除機能
* 画像保存機能

## 本番環境
http://52.193.230.41/

## DEMO
#### トップページ
![screencapture-localhost-3000-2020-11-07-15_57_37](https://user-images.githubusercontent.com/63046993/98434450-0eb88100-2113-11eb-8d6b-c7ae55992462.png)

#### 店舗詳細ページ
![screencapture-localhost-3000-stores-2-2020-11-07-15_57_02](https://user-images.githubusercontent.com/63046993/98434465-44f60080-2113-11eb-8017-7258a226838a.png)

## 工夫したポイント

## 使用技術(開発環境)
#### フロントエンド
* HTML
* CSS
* JavaScript
* JQuery

#### バックエンド
* Ruby 2.5.1
* Ruby on Rails 5.0.7.2
* MySQL 5.6.47

#### インフラ
* AWS：EC2 / S3

## 課題や今後実装したい機能
* Google Map APIの導入
* Dockerの導入
* CircleCiの導入

## DB設計
#### Userテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|gender|integer|null: false|
|age|integer|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|

#### Storeテーブル
|Column|Type|Options|
|------|----|-------|
|store_name|string|null: false|
|postal_code|string|null: false, limit: 7|
|prefectures|string|null: false|
|ctiy|string|null: false|
|block_number|string|null: false|
|apartment_name|string||
|phone_number|integer|null: false, limit: 7|
|open_time|integer|null: false|
|close_time|integer|null: false|
|holiday|integer|null: false|
|smoking_environment|integer|null: false|
|website_url|string|null: false|
|user|references|null: false, foreign_key: true|

#### Imageテーブル
|Column|Type|Options|
|------|----|-------|
|image_url|string|null: false|
|store|references|null: false, foreign_key: true|
