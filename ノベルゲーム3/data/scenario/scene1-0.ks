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




主人公の名前を設定してください[p]

;テキストボックスの表示

*show_input_yourname

[edit left=550 top=150 name="sf.yourname"][r]

[locate x=575 y=225]
[button target="*sbm_name" name=button_name_kettei graphic="決定1.png" ]

[s]

*sbm_name
[commit]
[cm]

;名前が未入力の場合
[if exp="sf.yourname==''"]
    名前が未入力です。[l]
    @jump target=*show_input_yourname
[endif]

[emb exp=sf.yourname]さん。[r]
～これからあなたは恋愛バトルを繰り広げる主人公となる～
[l][cm]

; [mask]～[mask_off]
; マスクしている間に画面を書き換え、
; 1秒待った後にマスクを外します。
[mask time=" 1000"]
[bg time=" 0" storage="暗転.png"]
[wait time="1000"]
[mask_off time=" 1000" wait="true"]

どうして、どうしてこんなことになってしまったの・・・[p]
オレだってこんなことしたくない[p]
でも、あれは運命の出会いだったんだ[p]

; [mask]～[mask_off]
; マスクしている間に画面を書き換え、
; 1秒待った後にマスクを外します。
[mask time=" 1000"]
[bg time=" 0" storage="道端.png"]
[wait time="1000"]
[mask_off time=" 1000" wait="true"]



#あなた
オレの名前は[emb exp=sf.yourname]。地元の大学に通う、ごく普通の大学生だ。[p]

#
;キャラ表示4名分
;1人目のキャラクター登場
[chara_config talk_anim=none] 
[chara_show name="伊集院栄子"]

#
伊集院栄子[p]

;2人目のキャラクター登場
[chara_config talk_anim=none] 
[chara_show name="B子"]

#
Ｂ子[p]

;3人目のキャラクター登場
[chara_config talk_anim=none] 
[chara_show name="モブ男"]

#
モブ男[p]

;4人目のキャラクター登場
[chara_config talk_anim=none] 
[chara_show name="あなた"]

#あなた
そしてオレ。[r]
オレ達は学部もサークルも同じでいつも一緒に過ごしてきた。[p]
今年は4年生。最後の大学生活。[r]
仲間たちとの楽しい思い出を残したい。[p]
オレたちなら最高の思い出が残せるはずだ！！！[p]

#

[chara_hide_all time=1000 wait=true]

;背景画像の切り替え実行
[bg storage=暗転.png time=2000] 


#
・・・はずだった。[p]
[resetfont  ]

#
ネェ！[p]

#
なんだ？[p]

;キャラクター登場
[chara_show  name="伊集院栄子" face="上半身"]

#伊集院栄子
私だって馬鹿じゃないのよ。あなたの目を見れば分かるわ。[p]
だから、正直に言ってちょうだい。[p]
あなた、Ｂ子のことが好きなんでしょ？[p]

[glink  color="black"  storage="scene1-1.ks"  size="28"  x="360"  width="500"  y="150"  text="はぁ？そんなことねぇし。"  target="*selectinterest1"  ]
[glink  color="black"  storage="scene1-2.ks"  size="28"  x="360"  width="500"  y="250"  text="知ってたのかよ"  target="*selectinterest2"  ]

[s  ]
*selectinterest

