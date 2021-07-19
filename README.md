## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| name               | string | null: false |

- has_many :books

## books テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| title              | string  | null: false |
| story              | text    | null: false |
| category_id        | integer | null: false |
| quote              | text | null: false |
| thought            | text | null: false |
| user               | references | foreign_key: true |

- belongs_to :user