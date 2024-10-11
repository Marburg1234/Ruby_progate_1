puts "Hello Ruby"
puts "こんにちは、Ruby"
#コメント
puts 37 #数値の37を出力する
puts 2 +9 #計算してみる
puts "2 + 9" #計算と思いきや文字列として出力する
puts 13 * 9 #掛け算
puts 32 / 8 #割り算
puts 18 % 5 #割り算をした余りを計算で出す
puts "私は" + "にんじゃわんこです" #文字列を連結できる
puts "38" + "19" #文字列として扱った数値は連結できる

name = "にんじゃわんこ" #変数定義
puts name #変数を使って出力する

text = "プログラミングを学ぼう" #変数を定義
puts "Progateで" + text #文字列と変数(文字列)を連結させて使う

length = 8 
width = 9
puts length * width #変数(数値)を使って計算できる

text = "をマスターしよう"
puts "HTML" + text
puts "CSS" + text
puts "Ruby" + text

length = 9
width = 8
puts width
puts length * width
puts "-----"
width += 5
puts width
puts length * width

#変数展開
area = length * width
puts "面積は#{area}です" #変数展開 area=数値だが変数展開では文字列の中でも使うことができる！
#変数展開は、""ダブルクオテーションでしか使えない ''シングルクオテーションを使うと#{area}がそのまま出力される

score = 50
puts "点数は#{score}点でした"
if score > 80
    puts "よくできました！"
elsif score >= 50
    puts "まあまあでしたね！次もっと頑張りましょう"
else
    puts "ダメダメです。居残り決定です！"
end

#総合課題
number = 29

if number % 5 == 0 && number % 3 == 0
    puts "15の倍数です"
elsif number % 5 == 0
    puts "5の倍数です"
elsif number % 3 == 0
    puts "3の倍数です"
else 
    puts "3の倍数でも5の倍数でもありません"
end
