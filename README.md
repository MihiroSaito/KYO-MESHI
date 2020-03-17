# README


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association
- has_many :groups,  through:  :group_users
- has_many :group_users
- has_many :posts 


## groupsテーブル

|column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :users, through:  :group_users
- has_many :group_users
- has_many :group_dates

## group_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|bigint|null: false, foreign_key: true|
|group_id|bigint|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## group_datesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|

### Association
- belongs_to :group
- has_many :posts


## postsテーブル

|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|url|string|
|image|string|
|user_id|bigint|null: false, foreign_key: true|
|group_id|bigint|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group_date
