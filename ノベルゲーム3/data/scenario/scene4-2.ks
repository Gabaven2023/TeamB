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

;B子
[chara_new  name="B子"  storage="chara/B子/ノーマル.png" jname="B子" ]

; [chara_config] 強調表現を「ブライトネス」指定、表情の記憶機能を「有効」、表情切り替え時間を「０」に。
[chara_config talk_focus="brightness" memory="true" time="0"]

*selectinterest3

[cm]
#
「○」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=背景時計.jpg time=2000] 
 
#B子
違うのか・・・[p]

#伊集院栄子
南アメリカやアフリカなど、熱帯の森林を中心に減少しているけど、[p]
アジア、ヨーロッパを中心とした森林は増加している国もあるんだ！[p]

#B子
そうだったのか。[p]

#伊集院栄子
この今の時代、何時何が起きるか分からない。どんな時でもＢ子を守ってやれる男になるんだぞ。[p]

#B子
モブ男！[p]
次だ！[p]

#伊集院栄子
おう！[p]

#伊集院栄子
問題[p]

[link storage="scene5-4.ks"]正解[endlink][r]
[link storage="scene5-3.ks"]不正解[endlink][r]
[s]


