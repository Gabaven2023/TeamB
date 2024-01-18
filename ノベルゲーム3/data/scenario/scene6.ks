;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="バトル.png" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;伊集院栄子
[chara_new  name="伊集院栄子"  storage="chara/伊集院栄子/ノーマル.png" jname="伊集院栄子" ]
;キャラクターの表情登録
[chara_face name="伊集院栄子" face="左向き" storage="chara/伊集院栄子/ノーマル左向き.png"]

;B子
[chara_new  name="B子"  storage="chara/B子/ノーマル.png" jname="B子" ]
;キャラクターの表情登録
[chara_face name="B子" face="左向き" storage="chara/B子/ノーマル左向き.png"]

;モブ男
[chara_new  name="モブ男"  storage="chara/モブ男/ノーマル.png" jname="モブ男" ]
;キャラクターの表情登録
[chara_face name="モブ男" face="左向き" storage="chara/モブ男/ノーマル左向き.png"]

;あなた
[chara_new  name="あなた"  storage="chara/あなた/ノーマル.png" jname="あなた" ]
;キャラクターの表情登録
[chara_face name="あなた" face="左向き" storage="chara/あなた/ノーマル左向き.png"]

; [chara_config] 強調表現を「ブライトネス」指定、表情の記憶機能を「有効」、表情切り替え時間を「０」に。
[chara_config talk_focus="brightness" memory="true" time="0"]

*selectinterest6

[cm]

;背景画像の切り替え実行
[bg storage=夕焼け.png time=2000] 

#モブ男
・・・正解だ。[p]
#あなた
しょおおおおおおあああああ！[p]
#モブ男
お前がそこまで環境クイズに詳しいとはな。[p]
#あなた
これは知っておくべき教養だからな！[p]
#モブ男
ははは、完全にオレの負けだ。[p]
#あなた
何言ってるんだよ、モブ男。[p]
#あなた
モブ男がオレをここまで連れてきてくれたんだろ？[p]
#モブ男
違うさ、///キャラ名[p]
#あなた
え、Ｂ子！？[p]
#Ｂ子
ごめんなさい、盗み見るようなマネをして。[p]
#あなた
どうしてこんな所に。[p]
#Ｂ子
モブ男くんが１６時にここに来るようにって。私、びっくりして。[p]
#あなた
モブ男・・・。[p]
#モブ男
ほらいけよ。[p]
#あなた
Ｂ子、オレ・・・[p]
#Ｂ子
///キャラ名・・・[p]
#あなた
Ｂ子のことが好きだーー！！[p]
#伊集院栄子！！
ちょっと待ったー！！[p]
///キャラ表示　伊集院栄子
#あなた
伊集院栄子！！[p]
#伊集院栄子
私、///キャラ名のことが好き！[p]
#モブ男
お前、どうすんだよ[p]
#あなた
オレは・・・[p]
#あなた
少し考えさせてくれ。[p]
#伊集院栄子・Ｂ子
優柔不断な人は嫌い！[p]
#あなた
推しの髪型と女の子の機嫌はすぐに変わるってか。とほほ・・・・[p]

ＧＡＭＥ　ＯＶＥＲ[p]
#
[chara_hide_all]

; [mask]～[mask_off]
; マスクしている間に画面を書き換え、
; 1秒待った後にマスクを外します。
[mask time=" 500"]
[bg time=" 0" storage="ホーム画面.jpg"]
[wait time="1000"]
[mask_off time=" 500" wait="true"]

@jump storage="title.ks"

