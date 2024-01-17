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

; [chara_config] 強調表現を「ブライトネス」指定、表情の記憶機能を「有効」、表情切り替え時間を「０」に。
[chara_config talk_focus="brightness" memory="true" time="0"]

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



*selectinterest2

[cm]
#
「知ってたのかよ」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=チョイス画面.jpg time=2000] 


[chara_config brightness=20 talk_focus=brightness]
;１人目のキャラクター登場
[chara_show  name="伊集院栄子"  ]

#伊集院栄子
そっか・・・分かった。[p]


[chara_config talk_anim=none] 				
;キャラクター登場
[chara_show  name="B子"  ]

#伊集院栄子
ん？なんなんだ・・・？[p]

#B子
こんにちは。[p]
私の名前はB子。[p]
今日は学祭に栄子と遊びに来たの！[p]

[chara_config talk_anim=up] 
#伊集院栄子
おそいよ～Ｂ子～。[p]

#B子
ごめんごめん！[p]

[chara_config talk_anim=up] 
#伊集院栄子
あのさ、私、好きなんだよね。あいつのこと。[p]

#B子
そっか・・・。[p]
私もなんだ。[p]

[chara_config talk_anim=up] 
#伊集院栄子
・・・やっぱりそうだったんだね[p]

#B子
ここからはライバルだね！[p]
正々堂々と勝負しよう！[p]

[chara_config talk_anim=up] 
#伊集院栄子
そうね！[emb exp=sf.yourname]にふさわしいのがどちらなのか、勝負よ！[p]

#B子
かかってらっしゃい！[p]

[chara_config talk_anim=none] 
#伊集院栄子
じゃあいくよ！[p]
あなたは台風や洪水の備えのために食料などを備蓄しようと思いました。食料や水は最低10日分備蓄すればよい。[r]○か×か。どっちでしょう！

[glink  color="black"  storage="scene2-3.ks"  size="28"  x="360"  width="500"  y="150"  text="○"  target="*selectinterest3"  ]
[glink  color="black"  storage="scene2-4.ks"  size="28"  x="360"  width="500"  y="250"  text="×"  target="*selectinterest4"  ]

[s  ]

			