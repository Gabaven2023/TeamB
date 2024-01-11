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
[chara_new  name="土ちゃん"  storage="chara/土ちゃん/ノーマル.png" jname="土ちゃん" ]
;キャラクターの表情登録
[chara_face name="土ちゃん" face="左向き" storage="chara/土ちゃん/ノーマル左向き.png"]

;Ｂ子
[chara_new  name="生物ちゃん"  storage="chara/生物ちゃん/ノーマル.png" jname="生物ちゃん" ]


*selectinterest4

[cm]
「×」がクリックされました[l][p]

///背景は学祭風景。 

#伊集院栄子
正解！！さすがＢ子。[p]

#生物ちゃん
でしょ！ふふふ[p] 

#伊集院栄子
でも私、これだけじゃ諦めきれないから。[p]

＃Ｂ子
わかってる。私たちライバルだけど、それ以上にトモダチだから[p]
それを忘れないで欲しいな[p]

＃伊集院栄子
当たり前じゃん。[p]

///game3-0へ移動