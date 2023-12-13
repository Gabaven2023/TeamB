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
「はい。興味あります」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=背景時計.jpg time=2000] 
 
[chara_show  name="伊集院栄子"  ]
#伊集院栄子
やっぱり、そうなのね・・・[p]
;伊集院栄子の表情の変更
[chara_mod name="伊集院栄子" face="左向き"]
					
;キャラクター登場
[chara_show  name="Ｂ子"  ]
#Ｂ子
ふたりとも何話してるの？[p]
あ！しゅーやくんも来てたんだ♪[p]
よかったら一緒に学祭まわらない？？[p]

#伊集院栄子
待って！[p]
・・・私だってしゅーやくんと一緒に回りたい。[p]
だから、私と勝負して、Ｂ子[p]

#
オレのために争わないでくれ！！！[p]

#Ｂ子
悲しいけど、そうするしかなさそうね。[p]
かかってらっしゃい！[p]

#伊集院栄子
行くわよ！！[p]

#伊集院栄子
日本で１年間に廃棄される食品ロスの量はどれくらいでしょう？？

[link storage="scene2-1waka.ks"]【１】３００万トン[endlink][r]
[link storage="scene2-2waka.ks"]【２】６００万トン[endlink][r]
[s]


					
