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

; [chara_config] 強調表現を「ブライトネス」指定、表情の記憶機能を「有効」、表情切り替え時間を「０」に。
[chara_config talk_focus="brightness" memory="true" time="0"]

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


*selectinterest1

[cm]
#
「はぁ？そんなことねぇし。」がクリックされました[l][p]

[chara_config brightness=20 talk_focus=brightness]

;キャラクター登場
[chara_show  name="伊集院栄子"  ]

#伊集院栄子
やっぱり・・・目を見れば分かるわ。[p]

#あなた
・・・[p]

#伊集院栄子
私、諦めないから。[p]

;背景画像の切り替え実行　場面転換、夕焼け、伊集院栄子とＢ子のみ
; [mask]～[mask_off]
; マスクしている間に画面を書き換え、
; 1秒待った後にマスクを外します。
[mask time=" 1000"]
[bg time=" 0" storage="夕焼け.png"]
[wait time="1000"]
[mask_off time=" 1000" wait="true"]


[chara_config brightness=20 talk_focus=brightness]

[chara_hide name="伊集院栄子"]

;キャラクター登場
[chara_show  name="伊集院栄子" zindex="2" face="上半身左向き"]
;キャラクター登場
[chara_show  name="B子" face="上半身" ]


#B子
ごめんごめん！[p]

#伊集院栄子
おそいよ～Ｂ子[p]

#B子
さてと！今日もクイズしよっか！[p]

#伊集院栄子
・・・[p]

#B子
って、どうしたの？そんな神妙な顔して。[p]

#伊集院栄子
・・・やっぱりＢ子にはお見通しだね。[p]

#B子
何年友達やってると思ってんの。話して。[p]

#伊集院栄子
さっき、[emb exp=sf.yourname]に会ってきたんだ。[p]

[chara_config talk_anim=up]
#B子
・・・！[p]

[chara_config talk_anim=none]
#伊集院栄子
あいつ、Ｂ子のことが好きなんだって。[r]
・・・でも私、諦めきれない。[p]

#B子
わかった。私達ライバルってことね[p]

#伊集院栄子
ありがとう。私、Ｂ子のことズッ友だと思ってる。[p]
だからこそ、正々堂々と勝負させて。[p]

#B子
わかった。一切手抜きしないから！[p]


[chara_config talk_anim=up]
#伊集院栄子
行くわよ！！クイズ！[p]

;背景画像の切り替え実行
[bg storage=バトル.png time=2000] 

日本で1年間に廃棄される食品ロスの量はどれくらいでしょう？？

[glink  color="black"  storage="scene2-1.ks"  size="28"  x="360"  width="500"  y="150"  text="300万トン"  target="*selectinterest2-1"  ]
[glink  color="black"  storage="scene2-2.ks"  size="28"  x="360"  width="500"  y="250"  text="600万トン"  target="*selectinterest2-2"  ]

[s]

