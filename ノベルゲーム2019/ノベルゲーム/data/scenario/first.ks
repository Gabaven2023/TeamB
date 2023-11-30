

;チュートリアル用スクリプトファイル

*start
*title
;メッセージレイヤを非表示にしておく
@layopt layer=message0 visible=false

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

広い廊下が奥まで続いている[l][r]
部屋があるのかな？[l][cm]
部屋の奥にはがいる人の気配がある。。。[l]
吾輩はここで始めて人間というものを見た。 [l][cm]




 ;背景画像の切り替え実行
 [bg storage=room.jpg time=4000]  ここの数字大きくしたら背景がゆっくり変わる
 
 背景が切り替わりましたね？  [l][cm]



;１人目のキャラクター登場
[chara_new name="akane" storage="生物ちゃん1.png" jname="あかね"]
[chara_show name="akane"]
あかねが登場しました！[l][r]

;２人目のキャラクター登場
[chara_new name="yamato" storage="水くん1.png" jname="やまと"]
[chara_show name="yamato"]
やまとが登場しました！[l][r]


;あかねの表情を登録
[chara_face name="akane" face="angry" storage="aangry.png"]

表情を変更します[p]
;あかねの表情の変更
[chara_mod name="akane" face="angry"]

表情を元に戻します[p]
;あかねの表情を元に戻す
[chara_mod name="akane" face="default"]

;あかねを退場[p]
[chara_hide name="akane" ]

音楽を再生します[l][r]
[playbgm storage=test.ogg]

音楽が再生されましたね[l][r]
次に音楽を停止します[l][r]
[stopbgm]
音楽の再生が止まりました[l][r]

選択肢を表示します[l][r][r]

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


*common
 ;背景画像の切り替え実行
 [bg storage=title.jpg time=4000]  ここの数字大きくしたら背景がゆっくり変わる
 
 背景が切り替わりましたね？  [l][cm]

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

