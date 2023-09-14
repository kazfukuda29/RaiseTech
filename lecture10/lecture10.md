# 第10回課題

## CloudFormation を利用して、現在までに作った環境をコード化する。また、コード化ができたら実行してみて、環境が自動で作られることを確認する。

***

## 1.コードは下記にファイルで作成

 - [vpc.yml](./templates/vpc.yml)
 - [ec2.yml](./templates/ec2.yml)
 - [rds.yml](./templates/rds.yml)
 - [elb.yml](./templates/elb.yml)
 - [s3.yml](./templates/s3.yml)

## 2.実行後の確認画像

  - **一覧**

  ![一覧](./img/stack-archive.png)

  - **VPCリソース**

  ![VPCリソース](./img/resource-lec10-vpc.png)

  - **EC2リソース**

  ![EC2リソース](./img/resource-lec10-ec2.png)

  - **RDSリソース**

  ![RDSリソース](./img/resource-lec10-rds.png)

  - **ELBリソース**

  ![ELBリソース](./img/resource-lec10-elb.png)

  - **S3リソース**

  ![S3リソース](./img/resource-lec10-s3.png)
