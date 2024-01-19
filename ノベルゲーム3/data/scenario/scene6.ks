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
[chara_face name="伊集院栄子" face="上半身" storage="chara/伊集院栄子/ノーマル上半身.png"]
[chara_face name="伊集院栄子" face="上半身左向き" storage="chara/伊集院栄子/ノーマル上半身左向き.png"]
[chara_face name="伊集院栄子" face="神妙な表情" storage="chara/伊集院栄子/神妙な表情.png"]

;B子
[chara_new  name="B子"  storage="chara/B子/ノーマル.png" jname="B子" ]
;キャラクターの表情登録
[chara_face name="B子" face="左向き" storage="chara/B子/ノーマル左向き.png"]
[chara_face name="B子" face="上半身" storage="chara/B子/ノーマル上半身.png"]
[chara_face name="B子" face="上半身左向き" storage="chara/B子/ノーマル上半身左向き.png"]
[chara_face name="B子" face="心配顔" storage="chara/B子/心配顔.png"]


;モブ男
[chara_new  name="モブ男"  storage="chara/モブ男/ノーマル.png" jname="モブ男" ]
;キャラクターの表情登録
[chara_face name="モブ男" face="左向き" storage="chara/モブ男/ノーマル左向き.png"]
[chara_face name="モブ男" face="上半身" storage="chara/モブ男/ノーマル上半身.png"]
[chara_face name="モブ男" face="上半身左向き" storage="chara/モブ男/ノーマル上半身左向き.png"]
[chara_face name="モブ男" face="煽り顔" storage="chara/モブ男/煽り顔.png"]

;あなた
[chara_new  name="あなた"  storage="chara/あなた/ノーマル.png" jname="あなた" ]
;キャラクターの表情登録
[chara_face name="あなた" face="左向き" storage="chara/あなた/ノーマル左向き.png"]
[chara_face name="あなた" face="上半身" storage="chara/あなた/ノーマル上半身.png"]
[chara_face name="あなた" face="上半身左向き" storage="chara/あなた/ノーマル上半身左向き.png"]
[chara_face name="あなた" face="燃える顔" storage="chara/あなた/燃える顔.png"]

; [chara_config] 強調表現を「ブライトネス」指定、表情の記憶機能を「有効」、表情切り替え時間を「０」に。
[chara_config talk_focus="brightness" memory="true" time="0"]

*selectinterest6

[cm]

;背景画像の切り替え実行
[bg storage=夕焼け.png time=2000] 

#モブ男
・・・正解だ。[p]

; [kanim] countパラメータを指定した例。
[kanim name=あなた keyframe=my_anim2 time=700 count=3]
; [keyframe]～[endkeyframe] キーフレームアニメーション my_anim2 を定義します。
[keyframe name=my_anim2]
; [frame] アニメーション25%完了時には右に1px動いている……ということを定義します。
[frame p=25% x=25 ]
; [frame] アニメーション25%完了時には左に1px動いている……ということを定義します。
[frame p=25% x=-25]
[endkeyframe]

; [kanim] countパラメータを指定した例。
[kanim name=あなた keyframe=my_anim2 time=700 count=3]
#あなた
しょおおおおおおあああああ！！[p]
[wa]
[stop_kanim name=あなた]

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
違うさ、[emb exp=sf.yourname][p]

[chara_hide_all]

;1人目のキャラクター登場
[chara_show name="モブ男" zindex="2" face="上半身左向き"]

;2人目のキャラ登場
[chara_show name="あなた" zindex="2" face="上半身左向き"]

[chara_config talk_anim=up] 
#あなた
え、Ｂ子！？[p]


;3人目のキャラ登場
[chara_show name="B子" face="上半身"]



[chara_config talk_anim=none] 
#B子
ごめんなさい、盗み見るようなマネをして。[p]

#あなた
どうしてこんな所に。[p]
#B子
モブ男くんが１６時にここに来るようにって。私、びっくりして。[p]
#あなた
モブ男・・・。[p]
#モブ男
ほらいけよ。[p]
#あなた
B子、オレ・・・[p]
#B子
[emb exp=sf.yourname]・・・[p]
#あなた
B子のことが好きだーー！！[p]

;4人目のキャラクター登場
[chara_show name="伊集院栄子" zindex="2" face="上半身"]

#伊集院栄子
ちょっと待ったー！！[p]
[emb exp=sf.yourname]　[p]

#あなた
伊集院栄子！！[p]

[chara_config talk_anim=up] 
#伊集院栄子
私、[emb exp=sf.yourname]のことが好き！[p]

[chara_config talk_anim=none] 
#モブ男
お前、どうすんだよ[p]
#あなた
オレは・・・[p]
#あなた
少し考えさせてくれ。[p]

[chara_config talk_anim=up] 
#伊集院栄子・B子
優柔不断な人は嫌い！[p]
[chara_config talk_anim=none] 
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

