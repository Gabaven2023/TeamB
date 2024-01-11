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


*selectinterest1

[cm]
「はぁ？そんなことねぇし。」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=背景時計.jpg time=2000] 
 
[chara_show  name="伊集院栄子"  ]
#伊集院栄子
・・・目を見れば分かるわ。[p]

///主人公を表示
・・・[p]

＃伊集院栄子
私、諦めないから。[p]

;伊集院栄子の表情の変更
[chara_mod name="伊集院栄子" face="左向き"]
					
;キャラクター登場
[chara_show  name="Ｂ子

///場面変更、学祭の風景


#Ｂ子
ごめんごめん！[p]

#伊集院栄子
おそいよ～Ｂ子[p]

#Ｂ子
さてと、学祭まわろうか！[p]

#Ｂ子
って、どうしたの？そんな神妙な顔して。[p]

＃伊集院栄子
・・・やっぱりＢ子にはお見通しだね。[p]

＃Ｂ子
何年友達やってると思ってんの。話して。[p]

＃伊集院栄子
さっき、あいつに会ってきたんだ。[p]

＃Ｂ子
・・・！[p]

＃伊集院栄子
あいつ、Ｂ子のことが好きなんだって。[p]
・・・でも私、諦めきれない。[p]

＃Ｂ子
わかった。私達ライバルってことね。[p]

＃伊集院栄子
ありがとう。私、Ｂ子のことズッ友だと思ってる。[p]
だからこそ、正々堂々と勝負させて。[p]

＃Ｂ子
わかった。一切手抜きしないから！[p]

#伊集院栄子
行くわよ！！クイズ！[p]

#伊集院栄子
日本で１年間に廃棄される食品ロスの量はどれくらいでしょう？？

＃Ｂ子
こんなの常識よ！！！

[link storage="scene2-1waka.ks"]【１】３００万トン[endlink][r]
[link storage="scene2-2waka.ks"]【２】６００万トン[endlink][r]
[s]


					
