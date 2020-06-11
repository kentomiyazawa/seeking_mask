## アプリ名
SeekingMask

## URL
https://seeking-mask.herokuapp.com/

## テストアカウント
email: test1@test
<br>
password: testtest
<br>
使用後はログアウトをお願い致します

## なぜ作ったか?
本格的にプログラミング学習を始めて約1ヶ月が経ち、自分でアプリケーションを作りました。作成を始めた4月後半、世間では新型コロナの影響でマスクが不足していました。そんな時に台湾のIT大臣がマスクの売っている場所が分かるアプリケーションを作成したというニュースをみました。もちろんこのアプリケーションを使っただけで、コロナを抑え込めた訳では無いと思いますが、コロナの抑制に一役買ったと思っています。自分でもこんな便利なアプリケーションを作ってみたいと思い、挑戦してみました。台湾のIT大臣が作成したアプリには遠く及びませんが、このアプリケーションを作成して、間違いなく自分に知識と経験が身に付きました。

## できること
一般ユーザーは店舗を検索して、検索した店舗がどのくらいマスクが売っていて、値段がいくらなのかなどを知ることができます。
店舗の方はメーカー名や値段などを入れると、一般ユーザー用の画面に表示されます。

## 開発環境
・Ruby(Ruby on rails '5.2.3')
・Haml
・Sass
・jQuery
・Git hub
・Heroku
・My SQL
・Visual Studio Code

## 内容
### トップ画面
![](https://i.gyazo.com/13a13edd1732f89972a835f1f5ebb516.jpg)
### 店舗一覧(一般ユーザー用)
![](https://i.gyazo.com/a5456488c956cc83df6006b28a15a8fe.jpg)
### 店舗の在庫状況(一般ユーザー用)
![](https://i.gyazo.com/30b9a7ac4c0f77fd004de9ea46bebdac.jpg)
### 店舗の管理画面(店舗用)
![](https://i.gyazo.com/ff361ed8399d5d894e5a25b72fb8dc72.jpg)

## 今後実装してみたい事
お店の住所をDBから引っ張り出して、店舗詳細画面に地図を表示してみたいです。
<br>
また、pay.jpを使用して前払いの購入システムができたら、お店が混雑せず三密が防げるのではと思います。

## DB設計
### masksテーブル
|Column|Type|Option|
|------|----|------|
|maker|string|null: false|
|price|integer|null: false|
|stock|integer|null: false|
|size|string|null: false|
|user_id|integer|null: false|
- belongs_to :user

### usersテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|address|string|null: false|
|phone|string|null: false|
|email|string|null: false|
|password|string|null: false|
- has_many :masks  

