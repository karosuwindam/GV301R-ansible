# ASUS ROG Flow X13 GV301RのAnsible実行

## 概要
以下のソフトを自動化する。
* VS Code
* Slack
* Zoom
* Discode
* Chrome
* vlc
* Golang
* onedrive
* Docker
* docker-compose
* NextCloud Desktop Client
* virtualbox
* Steam
* asus setup
* GSreamer
* gimp
* inkscape

## 実行方法


以下コマンドで、導入しておく
```
sudo apt update && sudo apt upgrade -y && sudo apt install ansible make git curl ssh -y
```

以下のコマンドでSSH接続用のKeyを作成する。
```
ssh-keygen
```

以下コマンドで、接続するためのkeyを登録する
```
ssh-copy-id localhost
```

以上で、Ansibleが実行実行できる準備ができたので
以下のコマンドで実行する。
```
git clone https://github.com/karosuwindam/GV301R-ansible.git
cd GV301R-ansible
make install
```

## onedriveの設定

以下コマンドでログイン用のトークンURLを作成
```
onedrive
```

設定の確認や手動同期
```
onedrive --display-config # 設定の表示
onedrive --synchronize # 同期の開始
```

以下のコマンドで、サービス開始
```
systemctl --user enable onedrive
systemctl --user start onedrive
```