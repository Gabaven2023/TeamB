

*start
*title
;メッセージレイヤを非表示にしておく
@layopt layer=message0 visible=false

メッセージウィンドウの高さを変更します[l][cm]
[position height=160 top=530]
[cm]
メッセージウィンドウが下に表示されましたね？

;背景画像を設定
[image layer="base" page="fore" storage=back.jpg]
[image layer=1 storage=title.png visible=true top=100 left=150]

[locate x=100 y=300 ]
[button graphic="start.png" target=*first]

[s]
*first
[cm]
[freeimage layer=1]
メッセージレイヤを再度表示する
@layopt layer=message0 visible=true
ゲームが始まります[l][r]



[wait time=200]

吾輩わがはいは猫である。名前はまだ無い。[l][r]
どこで生れたかとんと見当けんとうがつかぬ。[l][cm]
何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。[l]
吾輩はここで始めて人間というものを見た。 [l][cm]




 ;背景画像の切り替え実行
 [bg storage=room.jpg time=4000]  [l][cm]



;１人目のキャラクター登場
[chara_new name="seibutu" storage="生物ちゃん1.png" jname="生物ちゃん"]
[chara_show name="seibutu"]
生物ちゃんが登場しました！[l][r]

;２人目のキャラクター登場
[chara_new name="mizu" storage="水くん1.png" jname="水くん"]
[chara_show name="mizu"]
水くんが登場しました！[l][r]



;生物ちゃんを退場[p]
[chara_hide name="akane" ]



地球温暖化対策でいいのは？[l][r][r]

; [glink] 文字ボタンオブジェクトを出します。
[glink x="320" y="200" width="400" text="発展途上国開発に投資する" target="*Part1" color="white"]
[glink x="320" y="300" width="400" text="温室効果ガス削減に対して補助金を用意する" target="*Part2" color="white"]
[s]

*select1


*Part1
発展選んだ[l][r][r]

; [glink] 文字ボタンオブジェクトを出します。
[glink x="320" y="200" width="400" text="発展途上国開発に投資する" target="*Part3" color="white"]
[glink x="320" y="300" width="400" text="温室効果ガス削減に対して補助金を用意する" target="*Part4" color="white"]
[s]


*Part2
温室選んだ[l][r][r]

; [glink] 文字ボタンオブジェクトを出します。
[glink x="320" y="200" width="400" text="発展途上国開発に投資する" target="*Part3" color="white"]
[glink x="320" y="300" width="400" text="温室効果ガス削減に対して補助金を用意する" target="*Part4" color="white"]
[s]






*common
 ;背景画像の切り替え実行
 [bg storage=back.jpg time=4000]  

[cm]

織田信長はどっちでしょう？

[locate x=20 y=100]
[button graphic="oda.png" target=*oda]

[locate x=450 y=100]
[button graphic="toyo.png" target=*toyo]

[s]

*oda
[cm]
正解です！[l]
@jump target=*common


*toyo
[cm]
間違いです[l]
@jump target=*common

*common

共通ルート[l]

[link target=*select1]【１】選択肢　その１[endlink][r]
[link target=*select2]【２】選択肢　その２[endlink][r]
[s]

*select1

[cm]

「選択肢１」がクリックされました[l]
@jump target=*common

*select2

[cm]

「選択肢２」がクリックされました[l]

@jump target=*common


