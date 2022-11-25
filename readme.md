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
* Docker
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

