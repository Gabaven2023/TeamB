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

;土ちゃん
[chara_new  name="土ちゃん"  storage="chara/土ちゃん/ノーマル.png" jname="土ちゃん" ]
;キャラクターの表情登録
[chara_face name="土ちゃん" face="左向き" storage="chara/土ちゃん/ノーマル左向き.png"]

;生物ちゃん
[chara_new  name="生物ちゃん"  storage="chara/生物ちゃん/ノーマル.png" jname="生物ちゃん" ]


*selectinterest1

[cm]
「はい。興味あります」がクリックされました[l][p]

;背景画像の切り替え実行
[bg storage=背景時計.jpg time=2000] 
 
[chara_show  name="土ちゃん"  ]
#土ちゃん
わー。興味あるなんて、嬉しいなー。[p]
;土ちゃんの表情の変更
[chara_mod name="土ちゃん" face="左向き"]
					
;キャラクター登場
[chara_show  name="生物ちゃん"  ]
#生物ちゃん
こんにちは。[p]
私の名前は生物ちゃん。[p]
これからよろしくね！[p]

#土ちゃん
よろしくな。[p]
ところでクイズは好き？[p]
わたしクイズができる人が好きなんだよね。[p]

#生物ちゃん
わたしも！！[p]

#土ちゃん
じゃあ問題出すよ[p]

#生物ちゃん
うん！！[p]

#土ちゃん
日本で1年間に廃棄される食品ロスの量はどれくらいでしょう？？

[link storage="scene2-1.ks"]【１】300万トン[endlink][r]
[link storage="scene2-2.ks"]【２】600万トン[endlink][r]
[s]


					
