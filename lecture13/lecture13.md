# 第13回課題

## CircleCI のサンプルに ServerSpec や Ansible の処理を追加してください。

- ルートディレクトリにansibleフォルダを作成し必要なファイルを作成
- cloudformationやcircleciのコードも追記修正
- Ansibleの実行時に-vvvオプションを追加することで、より詳細なデバッグ情報を取得できます。これにより、問題の原因を特定しやすくなります。
- Cannot find a valid baseurl for repo: amzn2-core/2/x86_64 のエラーが表示される原因このエラーの原因ですが、Amazon Linux 2 の yum リポジトリにアクセスが出来ない為にエラーとなっています。Amazon Linux 2 の yum リポジトリは、S3 にあり、AWS の内部からしかアクセスが許可されていません。その為、VPC のエンドポイントの設定をして、S3 にある yum リポジトリにアクセスできるようにしてないとエラーとなります。

# **job実行後circleciのUI**
![circleciUI画面](./img/circleci-result.png)
