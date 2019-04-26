## Snes9x-gtk-ja.po
Windows版のSnes9xは[ねこかぶのホームページ](http://nekokabu.s7.xrea.com/)にて日本語化パッチが公開されているが、Snes9x-gtkにはどうやら存在しなさそうだったので作成。

## インストール
以下のコマンドを実行。(ArchLinuxの場合。他のディストリでも大差ないはず)

```
$ msgfmt ja.po -o snes9x-gtk.mo
# cp snes9x-gtk.mo /usr/share/locale/ja/LC_MESSAGES/
```


## 備考
3年ぶりに翻訳やろうとしたらいろいろ変わっていたので更新。

以前の翻訳は無事取り込まれたのでpotファイルを生成したりなどはやめてja.poだけを編集することとした。
またpoの生成にpotを作らずmesonなどを利用して生成してるっぽいのでgenpot.shとsnes9x-gtk.potは削除。

翻訳は未完成かつ訳したものも自信はないので貢献お待ちしてます。

## License
[Snes9xのライセンス](https://github.com/snes9xgit/snes9x/tree/master/docs)に従う。
