# minimalfab_contest_2024_LNA
ミニマルファブコンテスト2024参加作品のFifty-NiftyベースのLNA  

## Fifty-Niftyとは？
Harald先生とMatthias先生により提唱された、2つのMOSFETで作成できる50個のサンプル回路集である。  
これで、基本的なアナログ回路はほぼ表現できるとされている。  
* [Fifty Nifty Variations of Two-Transistor Circuits: A tribute to the versatility of MOSFETs](https://www.researchgate.net/publication/354364068_Fifty_Nifty_Variations_of_Two-Transistor_Circuits_A_tribute_to_the_versatility_of_MOSFETs)

* ![Fifty-Nifty](images/fifty-nifty.png)


## 投稿動機
2024年の[Chipathon2024](https://ishi-kai.org/information/chipathon/2024/08/31/Entry-SSCS-OSE-CHIPATHON2024.html)のお題が「Fifty-Niftyの回路を自動生成する」というものであり、私もLNAで参戦予定であった。  
しかし、諸事情により、ギブアップすることとなったため、本ミニマルファブコンテスト2024で供養することにしたのである。  
* [Chipathon2024参戦敗北記](https://github.com/noritsuna/AdventCalendar2024/blob/main/OSSSilicon_Day_03.md)

* ![Fifty-Nifty_LNA](images/fifty-nifty_LNA.png)
* ![Chipathonタイトル](images/chipathon_title.PNG)
* ![Chipathon回路](images/chipathon_design.PNG)
* ![Chipathonシミュレーション結果](images/chipathon_sim.PNG)
* [エントリーシート](docs/chipathon2024_entry.pdf)


## 提出用ファイル
* [xschemファイル](LNA/lna.sch)
* [テストベンチファイル](LNA/lna_tb.sch)
* [GDSファイル](LNA/lna.gds)

* [各種ファイル保存ディレクトリ](LNA/)


### 提出用ファイル画像
#### 回路図(xschem)
* ![回路図](images/xschem.png)
* ![テストベンチとグラフ](images/TB_full.png)
* ![出力したグラフ](images/TB_graph.png)
* ![テストベンチ用回路](images/TB_xschem.png)

#### レイアウト(klayout)
* ![レイアウトファイル](images/klayout.png)
* ![DRC_OK](images/DRC_OK.png)
* ![LVS_OK](images/LVS_OK.png)


### トラブル
実は、一部トラブルが出ているため、報告する。  
最初に、LVSをしたらNGでた。  
* ![LVS_NG](images/LVS_NG.png)

理由は、LVSにおいて、2つのキャパシタの片方のピンが共通のNETにつながっていると「1つのキャパシタ」として認識されてしまうようである。
* ![LVSのエラー内容](images/LVS_klayout_ex2.png)

そこで、LVS用に回路図に手を加えた。  
共通のNETを分離した回路図とレイアウトを作成することとした。  
* ![LVS用の回路](images/LVS_xschem.png)
* ![LVS用の回路と説明](images/LVS_xschem_ex.png)
* ![LVS用のレイアウトと説明](images/LVS_klayout_ex1.png)
* ![LVS用のレイアウト](images/LVS_klayout.png)

この状態で、LVSがOKになった。
* ![LVS_OK](images/LVS_OK.png)
