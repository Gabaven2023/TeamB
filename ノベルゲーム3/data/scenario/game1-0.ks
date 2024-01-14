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

///場面転換　暗転

どうして、どうしてこんなことになってしまったの・・・[p]
オレだってこんなことしたくない[p]
でも、あれは運命の出会いだったんだ[p]

///場面転換　道端

オレの名前は主人公。地元の大学に通う、ごく普通の大学生だ。[p]

///キャラ表示4名分
伊集院栄子[p]
Ｂ子[p]
モブ男[p]
そしてオレ、主人公の4人は学部もサークルも同じでいつも一緒に過ごしてきた。[p]
今年は4年生。最後の大学生活。仲間たちとの楽しい思い出を残したい。[p]
オレたちなら最高の思い出が残せるはずだ！！！[p]

///場面転換　暗転
[font  size="30"   ]
・・・はずだった。[p]
[resetfont  ]

ネェ！[p]
なんだ？[p]

;キャラクター登場
[chara_show  name="伊集院栄子"  ]
#伊集院栄子
私だって馬鹿じゃないのよ。あなたの目を見れば分かるわ。[p]
だから、正直に言ってちょうだい。[p]
あなた、Ｂ子のことが好きなんでしょ？[p]

[glink  color="black"  storage="scene2.ks"  size="28"  x="360"  width="500"  y="150"  text="はぁ？そんなことねぇし。"  target="*selectinterest1"  ]
[glink  color="black"  storage="scene3.ks"  size="28"  x="360"  width="500"  y="250"  text="知ってたのかよ"  target="*selectinterest2"  ]

[s  ]
*selectinterest

