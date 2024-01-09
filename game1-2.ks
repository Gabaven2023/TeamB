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
[chara_face name="伊集院栄子" face="左向き" storage="chara/伊集院栄子/ノーマル左向き.png"jname="伊集院栄子"]

;Ｂ子ちゃん
[chara_new  name="Ｂ子ちゃん"  storage="chara/生物ちゃん/ノーマル.png" jname="生物ちゃん" ]


*selectinterest2

[cm]
「知ってたのかよ」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=チョイス画面.jpg time=2000] 

;１人目のキャラクター登場
[chara_show  name="伊集院栄子"  ]			
#伊集院栄子
そっか・・・。分かった。[p]

ん？なんなんだ・・・？[p]

;2人目のキャラクター登場
[chara_show  name="Ｂ子"  ]
Ｂ子の表情の変更
[chara_mod name="伊集院栄子" face="左向き"]

///背景画像の切り替え実行、学祭の風景

#Ｂ子
こんにちは。[p]
私の名前はＢ子。[p]
今日は学祭に栄子と遊びに来たの！[p]

＃伊集院栄子
遅いよーＢ子ー。[p]

#Ｂ子
ごめんごめん！[p]

＃伊集院栄子
あのさ、私、好きなんだよね。あいつのこと。

＃Ｂ子
そっか・・・[p]
私もなんだ。[p]

#伊集院栄子
・・・やっぱりそうだったんだね[p]

#Ｂ子
ここからはライバルだね！
正々堂々と勝負しよう！


#伊集院栄子
そうね！しゅーやくんに相応しいのがどちらなのか、勝負よ！[p]

#Ｂ子
かかってらっしゃい！！[p]

#伊集院栄子
じゃあいくよ！！
あなたは台風や洪水の備えのために食料などを備蓄しようと思いました。食料や水は最低１０日分備蓄すればよい。○か×か。

[glink  color="black"  storage="game2-3.ks"  size="28"  x="360"  width="500"  y="150"  text="○"  target="*selectinterest3"  ]
[glink  color="black"  storage="game2-4.ks"  size="28"  x="360"  width="500"  y="250"  text="×"  target="*selectinterest4"  ]

[s  ]

			
						