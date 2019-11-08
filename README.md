# library(Kakutani)

還暦おめでとうございます。

### インストール install
##### 依存性パッケージを読み込む　load required packages    
Rを開いて,   
install.packages("devtools")   
install.packages("MASS")   
library("devtools")   
library("MASS")   

##### 本体を読み込む　load Kakutani package 

install_github("Satoyo08/Kakutani")   
library("Kakutani")　

#### 試してみよう sample codes

help(package=Kakutani) #ヘルプとドキュメント　get help & documentations   
palette<-palette_Kakutani() #先生色リストを取得   
grasp_Kakutani(test_list) #与えられた遺伝子リストの特徴をまとめたグラフ群を生成   
random_Kakutani(100) #TEのIDをランダムに100個抽出   
random_Kakutani(100,types="sons") #1,2,5からなる乱数を100個生成   
plot_Kakutani() #CACTANを召喚   
plot_full_Kakutani() #漫画風の全身像を召喚   
