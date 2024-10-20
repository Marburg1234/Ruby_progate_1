#日付を扱うライブラリ Dateクラスを使ってみる すでにRubyでDateクラスが用意されている
#requireを使って読み込む
require "date"

#今日の日付を出力してみる
d = Date.today
puts "今日は#{d}です"

#日付の表示方法を変えてみる
p d.strftime("%Y/%m/%d")

#任意の日付を表示してみる
d1 = Date.new(2024, 1, 1)
puts d1

#月の最終日を表示する 日の部分に-1 する
puts "月の最終日を表示"
d2 = Date.new(2024, 10, -1)
puts d2

puts "月の最終日-1日を表示する"
d3 = Date.new(2024, 10, -2)
puts d3

d4 = Date.new(2024, 2, -1)
puts "うるう年"
puts d4

d5 = Date.new(2023, 2, -1)
puts "うるう年ではない"
puts d5


#今日が日曜日かどうか判定するメソッド tuesday?
puts "今日が火曜日かどうか"
puts d
puts d.tuesday?