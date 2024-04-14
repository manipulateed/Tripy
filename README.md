## How to execute it?
STEP 0：如果遇到圖片顯示不出來，請在解壓縮的時候在字碼頁中選取UTF-8。  

STEP 1：請先將tripy.sql檔匯入phpMyAdmin。並確保database名稱為tripy，且帳密和DBMgr.java中的配置相同。   

STEP 2：將剩餘檔案以project形式匯入eclipse。 

============================================
# 簡介
## 這是一個透過系統分析，撰寫需求、分析與設計文件，實現景點排成與蒐藏的旅遊網站
* 需求文件：使用案例圖、使用案例規格、專案目的
* 分析文件：使用案例之活動圖、強韌圖，分析使用者的操作流程與使用案例之
  * 1.Boundary：邊界物件，Use Case的主要元素之一就是Actor（參與者），Boundary的職責就是與Actor互動，它代表著一種外部元素與系統互動的關係。
  * 2.Control：控制物件，代表系統的動態行為，描述使用案例中系統應具有的規則與處理邏輯。
  * 3.Entity：實體物件，泛指系統會存取的資料，基本上是可以對應到物件。
* 設計文件：資料庫的設計、循序圖繪製(描述物件在時間序列中的交叉作用)
============================================
## 技術總結(語言/框架/工具/技術)
+ 前端：html、css、js、JQuery、Bootstrap實現UI
+ 前後端資料傳輸溝通：Ajax、JSON
+ 後端：Java、Servlet、Tomcat來開發和部署Java web應用程式
+ 資料庫：Mysql
============================================
# 簡易展示
## 瀏覽城市畫面
![image](https://github.com/manipulateed/Tripy/assets/86423307/fe60dd2e-c706-4fb6-8a08-1851747ce0f3)

## 景點資訊界面
![image](https://github.com/manipulateed/Tripy/assets/86423307/ce3884d4-fcb5-4d39-b184-c9060e6d4966)

## 排程畫面
![image](https://github.com/manipulateed/Tripy/assets/86423307/e0c8921f-9a24-4ed8-950a-0c6d5e455339)

## 資料表設計
![image](https://github.com/manipulateed/Tripy/assets/86423307/9d5a31e5-fc46-41c8-8ca2-7d9bd177f027)
