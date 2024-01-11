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
;主人公
[chara_new  name="主人公"  storage="chara//ノーマル.png" jname="主人公" ]
;B子
[chara_new  name="B子"  storage="chara/B子/ノーマル.png" jname="B子" ]

*selectinterest1

[cm]
#
「はい。興味あります」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=学際.jpg time=2000] 

[chara_config brightness=20 talk_focus=brightness]
[chara_config talk_anim=up] 
[chara_show  name="伊集院栄子"  ]

#伊集院栄子
やっぱり・・・目を見ればわかるわ。[p]

[chara_config talk_anim=none] 				
;キャラクター登場
[chara_show  name="B子"  ]
[chara_show  name="主人公"  ]

#主人公
・・・[p]

#伊集院栄子
私、諦めないから。[p]

;背景画像の切り替え実行
[bg storage=学際.jpg time=2000] 


#B子
ごめんごめん！[p]

#伊集院栄子
おそいよ～B子[p]

#B子
さてと、学際まわろうか！[p]

#B子
って、どうしたの？そんな神妙な顔して。[p]

#伊集院栄子
・・・やっぱりB子にはお見通しだね。[p]

#B子
何年友達やってると思ってんの。話して。[p]

#伊集院栄子
さっき主人公に会ってきたんだ[p]

#B子
・・・！！[p]

#伊集院栄子
あいつ、B子のことが好きなんだって。[p]

#伊集院栄子
・・・でも私、諦めきれない


#伊集院栄子
日本で1年間に廃棄される食品ロスの量はどれくらいでしょう？？

[link storage="scene2-600万.ks"]【１】600万トン[endlink][r]
[link storage="scene2-300万.ks"]【２】300万トン[endlink][r]
[s]

