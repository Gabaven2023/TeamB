;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="道端.jpg" time="100"]

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

;このゲームで登場するキャラクターを宣言;モブ男
[chara_new  name="モブ男"  storage="chara/モブ男/ノーマル.png" jname="モブ男" ]
;キャラクターの表情登録
[chara_face name="モブ男" face="ノーマル左向き" storage="chara/モブ男/ノーマル左向き.png"]

;あなた
[chara_new  name="あなた"  storage="chara/あなた/ノーマル.png" jname="あなた" ]

; [chara_config] 強調表現を「ブライトネス」指定、表情の記憶機能を「有効」、表情切り替え時間を「０」に。
[chara_config talk_focus="brightness" memory="true" time="0"]


[cm]

#モブ男	
正解だ！！		
#あなた	
よっしゃー！おめでとう。		
#モブ男	
聞いてくれ。おれは、本当はＢ子のことが好きなんだ。		
#あなた	
・・・そうだったのかー！！		
#モブ男	
だから次はオレもとっておきの問題をだす。		
#あなた	
おう！本気でかかってこい！		
#モブ男	
いくぞ！		
#モブ男	
いま、世界では森林が減っている。〇か×か？


[glink  color="black"  storage="scene7.ks"  size="28"  x="360"  width="500"  y="150"  text="×"  target="*selectinterest7"  ]
[glink  color="black"  storage="scene6.ks"  size="28"  x="360"  width="500"  y="250"  text="〇"  target="*selectinterest6"  ]

