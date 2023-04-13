# rock-paper-scissors
- gRPCの単方向RPCサーバーとコマンドラインのクライアントです。
- サーバーはジャンケンができるAPIと対戦成績の履歴のAPIを提供します。



# 

サーバー起動
```
% go run ./cmd/api
```

ping
```
% grpc_cli ls localhost:50051 game.RockPaperScissorsService
```

```shell
% grpc_cli call localhost:50051 game.RockPaperScissorsService.PlayGame 'handShapes: 1'
```


```out
connecting to localhost:50051
matchResult {
  yourHandShapes: ROCK
  opponentHandShapes: PAPER
  result: LOSE
  create_time {
    seconds: 1681366219
    nanos: 769084000
  }
}
Rpc succeeded with OK status
```
