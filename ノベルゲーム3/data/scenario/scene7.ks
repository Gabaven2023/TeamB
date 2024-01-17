;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="絵が挿入できる背景.jpg" time="100"]

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

*selectinterest7

[cm]
#あなた
頼む・・・！[p]
#モブ男
・・・不正解だ。[p]
#あなた
残念だよ。[p]
#あなた
Ｂ子！どうしてここに。[p]
#モブ男
Ｂ子。[p]
#Ｂ子
モブ男きゅん！[p]
#あなた
き、きゅ、きゅん・・・？[p]
#モブ男
悪いな、[emb exp=sf.yourname]。[p]
#あなた
どうして・・・[p]
#Ｂ子
私、物知りな人が好きなのよね。モブ男きゅんが出していた問題はそれも環境についてのクイズだった[p]
#Ｂ子
つまり、私達にも関係のあるテーマよ。それを知らないなんて、私、がっかりだわ。[p]
#あなた
そんな。。。[p]
#Ｂ子
それに比べて、モブ男きゅんは、すごーく物知りなの！[p]
#あなた
あわあわあわ。[p]
#Ｂ子
Ｂ子、モブ男きゅんの方がすきーぃ！！[p]

#
ＧＡＭＥ　ＯＶＥＲ[p]

[chara_hide_all]

; [mask]～[mask_off]
; マスクしている間に画面を書き換え、
; 1秒待った後にマスクを外します。
[mask time=" 500"]
[bg time=" 0" storage="ホーム画面.jpg"]
[wait time="1000"]
[mask_off time=" 500" wait="true"]

@jump storage="title.ks"