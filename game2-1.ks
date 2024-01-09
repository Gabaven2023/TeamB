;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="背景時計.jpg" time="100"]

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
[chara_new  name="伊集院栄子" storage="chara/伊集院栄子/normal.png" jname="伊集院栄子"  ]
;キャラクターの表情登録
[chara_face name="伊集院栄子" face="angry" storage="chara/伊集院栄子/angry.png"]
[chara_face name="伊集院栄子" face="doki" storage="chara/伊集院栄子/doki.png"]
[chara_face name="伊集院栄子" face="happy" storage="chara/伊集院栄子/happy.png"]
[chara_face name="伊集院栄子" face="sad" storage="chara/伊集院栄子/sad.png"]


;Ｂ子
[chara_new  name="Ｂ子"  storage="chara/yamato/normal.png" jname="Ｂ子" ]

;伊集院栄子
[chara_new  name="伊集院栄子"  storage="chara/伊集院栄子/ノーマル.png" jname="伊集院栄子" ]
;キャラクターの表情登録
[chara_face name="伊集院栄子" face="左向き" storage="chara/伊集院栄子/ノーマル左向き.png"]

;Ｂ子
[chara_new  name="Ｂ子"  storage="chara/Ｂ子/ノーマル.png" jname="Ｂ子" ]

[cm]
「３００万」がクリックされました[l][p]


;背景画像の切り替え実行
[bg storage=rouka.jpg time=2000] 

#伊集院栄子
不正解。６００万トンよ。[p]

#Ｂ子
、、、６００万、そんなに多かったなんて。

#伊集院栄子
そうよ。私のあいつの思いのようにね！[p]

#Ｂ子
・・・[p]

#伊集院栄子
まだまだよ。これからもっとちゃんと、私の本気、見せつけるんだから。[p]

#Ｂ子
私だって、こんなもんじゃないから。[p]

///game3-0へ移動