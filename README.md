# otoge_burn

https://github.com/remore/burn  を用いて作成したターミナルで出来る音ゲーです。

http://blog.hatena.ne.jp/shiro_goma/shiro-goma.hatenablog.com/edit?entry=8454420450076800788  にて実装したものです。

burnを改造した関係でGemfileが機能していません...

なので一旦vendor/bundleのライブラリ群もフルコミットしています。

参考までに使用しているバージョンに関してはGemfile.lockをご確認くださいませ。

また、色々突貫なのもあえての晒しなのでご容赦...w

# 環境

KarabinerがインストールされているMacが必要ですmm

# プレイの仕方

## 音ゲーサーバーの準備

```
make otoge OTOGE_SONG=hoge.mp3
```

とかすると、音ゲーサーバーが立ち上がります。

## プレイする

別のターミナルにて、

```
make play
```

とすると、ノーツが降ってきます。

満足したら普通にtelnetから抜けてください

# プレイを快適にするために

ブログにもある通り、Karabinerのprivate.xmlを書き換えてください。

そうすると`otoge_burn`という項目がでるのでチェックを入れてください。
