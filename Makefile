# // 例：変数TEXTに入っている文章を表示させるshow_textルールを設定する
#　変数定義は := でも = でも良い。
TEXT := "this is a sample."
x := foo
y := $(x) bar
x = later

# 変数展開の記号は()でも{}でも良い
show_text:
	echo Hello World!
	@echo Hello World!
	@echo $(TEXT)
	@echo ${x}
#    @echo Current '$$'http_proxy is ${http_proxy}
# go run ./cmd/api
#DATE = $(shell date)
#
#.PHONY: all
#all:
#   @echo $(DATE)
#   @$(shell sleep 3)
#   @echo $(DATE)
#   @$(shell sleep 3)
#   @echo $(DATE)

run_server:
	go run ./cmd/api

ping:
	grpc_cli ls localhost:50051 game.RockPaperScissorsService


play_goo:
	grpc_cli call localhost:50051 game.RockPaperScissorsService.PlayGame 'handShapes: 1'


show_result:
	grpc_cli call localhost:50051 game.RockPaperScissorsService.ReportMatchResults ''

play:
	go run ./cmd/cli
