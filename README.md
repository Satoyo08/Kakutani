# library(Kakutani)

角谷先生おめでとうございます。

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
palette<-palette_Kakutani()     
grasp_Kakutani(test_list)    
random_Kakutani(100)    
random_Kakutani(100,types="sons")   
plot_Kakutani()   
plot_full_Kakutani()   

