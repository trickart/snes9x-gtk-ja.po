## Snes9x-gtk-ja.po
Windows版のSnes9xは[ねこかぶのホームページ](http://nekokabu.s7.xrea.com/)にて日本語化パッチが公開されているが、Snes9x-gtkにはどうやら存在しなさそうだったので作成。

## インストール
以下のコマンドを実行。(ArchLinuxの場合。他のディストリでも大差ないはず)

```
$ msgfmt ja.po -o snes9x-gtk.mo
# cp snes9x-gtk.mo /usr/share/locale/ja/LC_MESSAGES/
```


## 備考
Githubの[snes9xgit/snes9x](https://github.com/snes9xgit/snes9x)の12月30日時点から作成。

Snes9x-gtkはスペイン語(ベネズエラ)とフランス語、ポルトガル語(ブラジル)、と何か(sr@latinってわからん)があるがちゃんと管理されてないようだ。

またpotファイルもなく、恐らくpotファイルを生成するためにxgettextに投げるファイル一覧としてPOTFILES.inが存在するが、 ~~これも管理されておらずgtk_binding.cppなど漏れているファイルもある。
そこでこれらを入れてpotファイルを生成するgenpot.shと生成済みのsnes9x-gtk.pot同梱した。~~
よく見たら漏れてなかった…potファイルから漏れるのはcppなのにC言語のフォーマットでgettextを使ってるからだった。`xgettext --keyword=_` で解決する。

またGithubのmasterと1.53は表示するメッセージが変更されているのかmasterには存在しないが1.53には存在するメッセージをpoファイルの末尾に追加している。

翻訳は未完成かつ訳したものも自信はないので貢献お待ちしてます。

## License
[Snes9xのライセンス](https://github.com/snes9xgit/snes9x/tree/master/docs)に従う。
