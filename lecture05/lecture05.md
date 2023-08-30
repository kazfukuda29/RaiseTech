# 第五回課題
***
## EC2上にサンプルアプリケーションのデプロイして動作させる

## 1.組み込みサーバー

- puma起動時ターミナル

![puma起動時ターミナル画面](./img/puma-terminal.png)

- ブラウザ

![puma起動時ブラウザ画面](./img/puma-browser.png)


## 2.Webサーバー（Nginx）とアプリケーションサーバー（Unicorn）

- NginxとUnicorn起動時ターミナル

![NginxとUnicorn起動時ターミナル画面](./img/nginx-unicorn-terminal.png)

- ブラウザ

![NginxとUnicorn起動時ブラウザ画面](./img/nginx-unicorn-browser.png)


## ELB(ALB)を追加

- ターゲットグループ作成

![ターゲットグループ画面](./img/Target-group-details-Load-Balancing-EC2.png)

- ALB作成

![ABL作成画面](./img/Load-balancer-details-Load-Balancing-EC2.png)

- ALBインバウンドルール

![ABL作成画面](./img/ALB-inbound.png)

- ALBアウトバウンドルール

![ABL作成画面](./img/ALB-outbound.png)




- EC2セキュリティグループでALBをインバウンドルールに追加

![EC2コンソール画面](./img/EC2-ALB-security.png)


- 疎通確認

![EC2コンソール画面](./img/Target-group-details-EC2.png)


- ALB追加後ブラウザ画面

![ALB追加後ブラウザ画面](./img/ALB-browser.png)


## S3を追加

- IAMロールをEC2に紐づけて作成

![ロール画面](./img/create-IAM-role.png)


- EC2のコンソールでロール確認

![ロール画面](./img/EC2-IAM-role-console.png)


- S3追加後ブラウザ画面

![S3追加後ブラウザ画面](./img/S3-browser.png)


- S3追加後コンソール画面

![S3追加後コンソール画面](./img/raisetech-lec05-s3-S3-bucket.png)


## 構成図

![構成図](./img/AWS構成図.png)
