
このサンプルはこれに基づいている。
https://dev.classmethod.jp/articles/golang-grpc-sample-project/


rock-paper-scissors/　　ルートディレクトリ
┣ cmd/
┃  ┣ api/
┃  ┃  ┗ main.go ・・・ サーバー側メイン処理
┃　　　　┗　cli/
┃     　┗ main.go ・・・ クライアント側メイン処理
┣ 　pb/
┃　　┣ rock-paper-scissors.pb.go ・・・ protoファイルから自動生成されたリクエスト/レスポンス部分のコード
┃ ┗ rock-paper-scissors_grpc.pb.go ・・・ protoファイルから自動生成されたサービス部分のコード　
  ┣ 　proto/
┃ ┗ rock-paper-scissors.proto ・・・ このサンプルプロジェクトのprotoファイル
┣ service/
┃  ┣ client.go ・・・ gRPCでサーバー側のAPIを呼び出す
┃  ┗ server.go ・・・ サービスの各メソッドを実装しgRPCを処理する
┣ go.mod
┗ go.sum


Problem1
グーで買ったらポイント100点アップ
チョキで買ったらポイント50点アップ
パーで買ったらポイント20点アップ