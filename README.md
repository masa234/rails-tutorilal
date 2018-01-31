# Sample App [![CircleCI](https://circleci.com/gh/hisas/sample_app2/tree/master.svg?style=svg)](https://circleci.com/gh/hisas/sample_app2/tree/master) [![Code Climate](https://codeclimate.com/github/hisas/sample_app2/badges/gpa.svg)](https://codeclimate.com/github/hisas/sample_app2)

これは、次の教材で作られたサンプルアプリケーションです。   
[*Ruby on Rails チュートリアル: 実例を使って Rails を学ぼう*](http://railstutorial.jp/)
[Michael Hartl](http://www.michaelhartl.com/) 著

## ライセンス

[Ruby on Rails チュートリアル](http://railstutorial.jp/)内にあるすべてのソースコードは
MIT ライセンスと Beerware ライセンスのもとに公開されています。
詳細は [LICENSE.md](LICENSE.md) をご覧ください。

## 使い方について

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてくださいませ。
次に、次のコマンドで必要になる RubyGems をインストールをお願いいたします。

```
$ bundle install --without production
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```


```
$ rails server
```

詳しくは、[*Ruby on Rails チュートリアル*](http://railstutorial.jp/)を参考にしてくださいませ。
