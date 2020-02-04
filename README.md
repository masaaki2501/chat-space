# Chatspace DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|

### Association
- has_many :messeges
- has_many :groups　through: :groups_users
- belongs_to :messege
- belongs_to :user


## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group||references|null: false, foreign_key: true|

### Association
- has_many :messeges
- has_many :users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :messeges
- has_many :users　through: :groups_users

## messegeテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string||
|user_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
