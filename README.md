## アプリケーション名

ReadMore!

## アプリケーション概要

このアプリケーションは、読んだ本などの内容を振り返り、本の理解を深めるとともに、それを投稿して交流する、本に特化したSNSです。
このアプリケーションでは、投稿画面で本の内容や評価を決め、それを投稿することができます。
トップページでは、投稿された本の画像とタイトル、ジャンル、評価が表示されます。
トップページに投稿された本のタイトルをクリックすると、本の詳細ページに飛ぶことができ、そこでは投稿画面で記入し、トップページでは表示されなかったあらすじや引用、感想を見ることができます。

## 目指した課題解決（制作背景）

このアプリケーションは、普段から本を読む方はもちろん、本を読まない方のためにも制作しました。
最近は本を読まない方が多くなっていると聞きます。それは、面白い本に出会えていないことが一つの原因なのではないかと考えました。
このアプリケーションは、自分が読んだ本の振り返りができるだけでなく、評価機能によって、他の人が面白いと感じた本が一目でわかります。これによって、普段本を読まない方でもすぐに面白い本と出会うことができ、本を読みたいという意欲につながるのではと考えました。

## DEMO

トップページの「投稿する」ボタンを押すと投稿画面に遷移できます。
[![Image from Gyazo](https://i.gyazo.com/9c20545d0caa38c19d3546fcd0190d53.gif)](https://gyazo.com/9c20545d0caa38c19d3546fcd0190d53)

星の評価機能は５段階で選択でき、クリックするまではカーソルが上に来ると星が点灯します。
クリックすると、その状態で星の点灯が固定できます。
クリックしてもしなくても、今カーソルがある星より左にある星は全て点灯します。
[![Image from Gyazo](https://i.gyazo.com/f2713657581ee568e7611a7d5438189e.gif)](https://gyazo.com/f2713657581ee568e7611a7d5438189e)

投稿画面で情報を全て入力し、「投稿する」ボタンを押すとトップページに遷移し、投稿した本の情報が表示されます。
[![Image from Gyazo](https://i.gyazo.com/916d5ffb0a15aa16f33e4bfbc71b1b42.gif)](https://gyazo.com/916d5ffb0a15aa16f33e4bfbc71b1b42)

トップページにある本のタイトルを押すと、その本の詳細ページに遷移し、トップページには表示されなかったあらすじ、引用、感想を見ることができます。
[![Image from Gyazo](https://i.gyazo.com/53ba0db9419f33e147d5e79076066eee.gif)](https://gyazo.com/53ba0db9419f33e147d5e79076066eee)

## 実装予定の内容

投稿画面で選択した星の評価を、トップページや詳細ページでも見ることができるようにしたいと考えています。

## DB設計

◯users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| name               | string | null: false |

- has_many :books

◯books テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| title              | string  | null: false |
| story              | text    | null: false |
| category_id        | integer | null: false |
| quote              | text | null: false |
| thought            | text | null: false |
| user               | references | foreign_key: true |

- belongs_to :user