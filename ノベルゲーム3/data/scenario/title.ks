
[cm]

@clearstack
@bg storage ="ホーム画面.jpg" time=100
@wait time = 200

*start 

[button x=550 y=500 graphic="title/start2.png" enterimg="title/start2.png"  target="gamestart" keyfocus="1"]
[button x=800 y=500 graphic="title/cont.png" enterimg="title/cont.png" role="load" keyfocus="2"]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"



