;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="部屋.png" time="100"]

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
[chara_face name="伊集院栄子" face="上半身" storage="chara/伊集院栄子/ノーマル上半身.png"]
[chara_face name="伊集院栄子" face="上半身左向き" storage="chara/伊集院栄子/ノーマル上半身左向き.png"]
[chara_face name="伊集院栄子" face="神妙な表情" storage="chara/伊集院栄子/神妙な表情.png"]

;B子
[chara_new  name="B子"  storage="chara/B子/ノーマル.png" jname="B子" ]
;キャラクターの表情登録
[chara_face name="B子" face="左向き" storage="chara/B子/ノーマル左向き.png"]
[chara_face name="B子" face="上半身" storage="chara/B子/ノーマル上半身.png"]
[chara_face name="B子" face="上半身左向き" storage="chara/B子/ノーマル上半身左向き.png"]
[chara_face name="B子" face="心配顔" storage="chara/B子/心配顔.png"]


;モブ男
[chara_new  name="モブ男"  storage="chara/モブ男/ノーマル.png" jname="モブ男" ]
;キャラクターの表情登録
[chara_face name="モブ男" face="左向き" storage="chara/モブ男/ノーマル左向き.png"]
[chara_face name="モブ男" face="上半身" storage="chara/モブ男/ノーマル上半身.png"]
[chara_face name="モブ男" face="上半身左向き" storage="chara/モブ男/ノーマル上半身左向き.png"]
[chara_face name="モブ男" face="煽り顔" storage="chara/モブ男/煽り顔.png"]

;あなた
[chara_new  name="あなた"  storage="chara/あなた/ノーマル.png" jname="あなた" ]
;キャラクターの表情登録
[chara_face name="あなた" face="左向き" storage="chara/あなた/ノーマル左向き.png"]
[chara_face name="あなた" face="上半身" storage="chara/あなた/ノーマル上半身.png"]
[chara_face name="あなた" face="上半身左向き" storage="chara/あなた/ノーマル上半身左向き.png"]
[chara_face name="あなた" face="燃える顔" storage="chara/あなた/燃える顔.png"]


; [chara_config] 強調表現を「ブライトネス」指定、表情の記憶機能を「有効」、表情切り替え時間を「０」に。
[chara_config talk_focus="brightness" memory="true" time="0"]

*selectinterest3


 

;キャラクター登場
[chara_show  name="モブ男"  face="上半身左向き" ]
;キャラクター登場
[chara_show  name="あなた" face="上半身" ]

[chara_config talk_anim=up] 
#モブ男
なぁ、[emb exp=sf.yourname]。[p]

[chara_config talk_anim=none] 
#あなた
どうしたんだよ。[p]

#モブ男
正直に答えてくれ。[p]
お前、Ｂ子のこと、どう思ってるんだよ。[p]

[chara_config talk_anim=up] 
#あなた
オレは。。。[p]
Ｂ子のことが好きだ。[p]

[chara_config talk_anim=none] 
#モブ男
・・・やっぱり。そうだったのか[p]
なぁ、[emb exp=sf.yourname]。[p]

#あなた
どうしたんだよ。[p]

 
#モブ男
モテる男の条件って知ってるか。[p]

[chara_config talk_anim=up]
#あなた
！？[p]
なんだそれは・・・！[p]

[chara_config talk_anim=none] 
#モブ男
それは知識教養のあるジェントルマンだ。[p]

#あなた
知識教養のあるジェントルマン、か・・・。[p]

#モブ男
[emb exp=sf.yourname]。今のお前には、Ｂ子を落とせるほどの教養があると言えるか？[p]

#あなた
・・・悔しいな。[p]

#モブ男
やはり。[p]
オレが主人公を一人前のジェントルマンにしてやる。ついてこい。[p]

[chara_config talk_anim=up]
#あなた
モブ男！心からの友よ！[p]

[chara_config talk_anim=none]
#モブ男
フッ。容赦しねぇぞ。[p]
早速問題だ！[p]

#
世界の森林減少は深刻な問題ですが、すべての地域で森林が減少していると思いますか？？

[glink  color="black"  storage="scene4-1.ks"  size="28"  x="360"  width="500"  y="150"  text="×"  target="*selectinterest4-1"  ]
[glink  color="black"  storage="scene4-2.ks"  size="28"  x="360"  width="500"  y="250"  text="○"  target="*selectinterest4-2"  ]

[s  ]

