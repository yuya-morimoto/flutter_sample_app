# flutter_sample_app

Flutter でサンプルアプリを作成してみる

##  コマンドメモ

- パッケージインストール
  `flutter pub get`

- iOS シミュレータ立ち上げ
  `open -a Simulator`

アプリケーション起動
`flutter run`

```bash

# シミュレータ系

## iOSシミュレータの起動
open -a Simulator

## AndroidエミュレータAVD名一覧を取得
emulator -list-avds
~/Library/Android/sdk/emulator/emulator -netdelay none -netspeed full -avd {avd_name}
## wipe-data
~/Library/Android/sdk/emulator/emulator -avd {avd_name} -wipe-data


# Flutterコマンド

## パッケージインストール
flutter pub get

## デバイス一覧の取得
flutter devices

## デバイスを指定してアプリケーションの起動(iOS/Androidを主に利用する)
flutter run -d {device_id}

```
