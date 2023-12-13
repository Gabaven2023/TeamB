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
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

;土ちゃん
[chara_new  name="土ちゃん"  storage="chara/土ちゃん/ノーマル.png" jname="土ちゃん" ]
;キャラクターの表情登録
[chara_face name="土ちゃん" face="左向き" storage="chara/土ちゃん/ノーマル左向き.png"]

;生物ちゃん
[chara_new  name="生物ちゃん"  storage="chara/生物ちゃん/ノーマル.png" jname="生物ちゃん" ]

[cm]
「300万」がクリックされました[l][p]


;背景画像の切り替え実行
[bg storage=rouka.jpg time=2000] 

#土ちゃん
不正解だよ、、[p]

#生物ちゃん
、、、600万ってとても多いね[p]

#土ちゃん
そうなんだよね[p]
