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
* asus setup

未設定
* Steam

## 実行方法


以下コマンドで、導入しておく
```
sudo apt update && sudo apt upgrade -y && sudo apt install ansible make git curl ssh -y
```

以下のコマンドで実行できるようにする。
```
ssh-keygen
ssh-copy-id localhost
```

```
git clone https://github.com/karosuwindam/GV301R-ansible.git
cd GV301R-ansibe
make install
```

