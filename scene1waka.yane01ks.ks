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

;Ｂ子
[chara_new  name="Ｂ子"  storage="chara/Ｂ子/ノーマル.png" jname="Ｂ子" ]

#
どうして、どうしてこんなことになってしまったの・・・[p]

こんなはずじゃなかったのに・・・[p]
オレだってこんなことしたくない。[p]
でも、あれは運命の出会いだったんだ。[p]

[font  size="30"   ]
#?
ねぇ！[p]
[resetfont  ]

#
なんだ？[p]

;キャラクター登場
[chara_show  name="伊集院栄子"  ]
#?
私だって馬鹿じゃないのよ。あなたの目を見れば分かるわ。[p]
だから、正直に言ってちょうだい。[p]
#土ちゃん
あなた、Ｂ子のことが好きなんでしょ？[p]

[glink  color="blue"  storage="scene2.ks"  size="28"  x="360"  width="500"  y="150"  text="はい。興味あります"  target="*selectinterest1"  ]
[glink  color="blue"  storage="scene3.ks"  size="28"  x="360"  width="500"  y="250"  text="ぼちぼちです"  target="*selectinterest2"  ]

[s  ]
