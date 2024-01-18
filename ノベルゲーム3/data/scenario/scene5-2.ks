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

;このゲームで登場するキャラクターを宣言;伊集院栄子
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




;背景画像の切り替え実行
[bg storage=絵が挿入できる背景.jpg time=2000] 

#モブ男
またも正解だ。
#あなた
・・・
#あなた
・・・モブ男。
#モブ男
どうしたんだよ。
#あなた
オレ、B子に告白しようと思う。
#モブ男
え！？
#あなた
モブ男のおかげでオレ自信がついたよ。
環境のクイズに正解してきた今のオレなら、Ｂ子に告白できる。
#モブ男
・・・
#モブ男
そうか。
#モブ男
。。。オレ実は。
#あなた
だから最後にひとつ、オレにクイズを出してくれないか。
#モブ男
。。。分かった。クイズだ！
#モブ男
地球温暖化が進むと、陸地が増えて水が減る？


[glink  color="black"  storage="scene7.ks"  size="28"  x="360"  width="500"  y="150"  text="○"  target="*selectinterest7"  ]
[glink  color="black"  storage="scene6.ks"  size="28"  x="360"  width="500"  y="250"  text="×"  target="*selectinterest6"  ]


