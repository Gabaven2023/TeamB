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

*selectinterest1

[cm]
#
「はぁ？そんなことねぇし。」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=背景時計.jpg time=2000] 

[chara_config brightness=20 talk_focus=brightness]
[chara_config talk_anim=up] 
[chara_show  name="伊集院栄子"  ]
#伊集院栄子
やっぱり・・・目を見れば分かるわ。[p]

;伊集院栄子の表情の変更
[chara_mod name="伊集院栄子" face="左向き"]

[chara_config talk_anim=none] 				
;キャラクター登場
[chara_show  name="B子"  ]

#あなた
・・・[p]
＃伊集院栄子
私、諦めないから。[p]

///場面転換、夕焼け、伊集院栄子とＢ子のみ

#Ｂ子
ごめんごめん！[p]
#伊集院栄子
おそいよ～Ｂ子[p]
#Ｂ子
さてと！今日もクイズしよっか！[p]
#伊集院栄子
・・・[p]
#Ｂ子
って、どうしたの？そんな神妙な顔して。[p]
#伊集院栄子
・・・やっぱりＢ子にはお見通しだね。[p]
#Ｂ子
何年友達やってると思ってんの。話して。[p]
#伊集院栄子
さっき、///ここに名前を表記させる。///に会ってきたんだ。[p]
#B子
・・・！[p]
#伊集院栄子
あいつ、Ｂ子のことが好きなんだって。[p]
#Ｂ子
・・・でも私、諦めきれない。[p]
#伊集院栄子
わかった。私達ライバルってことね[p]
#Ｂ子
ありがとう。私、Ｂ子のことズッ友だと思ってる。[p]
#伊集院栄子
だからこそ、正々堂々と勝負させて。[p]
#Ｂ子
わかった。一切手抜きしないから！
#伊集院栄子
行くわよ！！クイズ！
#伊集院栄子
日本で1年間に廃棄される食品ロスの量はどれくらいでしょう？？

[link storage="scene2-1.ks"]【１】300万トン[endlink][r]
[link storage="scene2-2.ks"]【２】600万トン[endlink][r]
[s]

