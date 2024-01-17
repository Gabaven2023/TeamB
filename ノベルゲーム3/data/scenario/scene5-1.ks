;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="バトル.png" time="100"]

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



*selectinterest5-1

[cm]
#
「①冷房のために排出されるCO2が全体の約１／４」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=暗転.png time=2000] 

#モブ男
不正解だ。[p]

#あなた
なん。。。だと。。。[p]

#モブ男
家庭部門からのco2排出の割合は、暖房・給湯がそれぞれ1/4程度、照明・家電製品が1/2程度、冷房は3%程度なのだ！！[p]

#あなた
そうなのか・・・[p]

;背景画像の切り替え実行
[bg storage=夕焼け.png time=2000] 

#モブ男
すぐに調子に乗るからそんなことになるんだ。[p]
#モブ男
いいか、韓国系アイドルの髪型と女の子の機嫌はいつも変化するんだ。油断するな。[p]
#あなた
確かにそうかもしれない！悔しいぜ[p]
#モブ男
心配するな。オレが[emb exp=sf.yourname]にもう一度チャンスをくれてやる！[p]

; [keyframe]～[endkeyframe] キーフレームアニメーション my_anim2 を定義します。
[keyframe name=my_anim2]
; [frame] アニメーション25%完了時には右に1px動いている……ということを定義します。
[frame p=25% x=25 ]
; [frame] アニメーション25%完了時には左に1px動いている……ということを定義します。
[frame p=25% x=-25]
[endkeyframe]

; [kanim] countパラメータを指定した例。
[kanim name=あなた keyframe=my_anim2 time=700 count=3]
#あなた
うおおおおおおおお！[p]
[wa]
[stop_kanim name=あなた]
 


#モブ男
クイズが出来る男は必ずモテる！！[p]


; [kanim] countパラメータを指定した例。
[kanim name=あなた keyframe=my_anim2 time=700 count=3]
#あなた
うおおおおおおおお！[p]
[wa]
[stop_kanim name=あなた]

#あなた（心の声）
次のクイズに正解して、B子を射止めるクールガイになるぞ！[p]
#モブ男
クイズだ！[p]

#

;背景画像の切り替え実行
[bg storage=バトル.png time=2000] 

#
白熱電球から電球型LEDランプに変えることによって、電力消費量を何％削減することができるでしょうか。[p]

[glink  color="black"  storage="scene6.ks"  size="28"  x="360"  width="500"  y="150"  text="①80%強"  target="*selectinterest6"  ]
[glink  color="black"  storage="scene7.ks"  size="28"  x="360"  width="500"  y="250"  text="②50%程度"  target="*selectinterest7"  ]

[s]


