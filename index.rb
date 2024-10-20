#MEnuクラスをコードを引き継いで使えるようにする
require "./menu"

# エンコーディングをUTF-8に設定
# encoding: utf-8

#値を決めてそれぞれ表示してみよう
menu1 = Menu.new(name: "うどん", price: 560)
puts menu1.info
menu2 = Menu.new(name: "ピザ", price: 1300)
puts menu2.info

#表示できたもののこれでは、毎度同じことを記述しなければならない
#puts menu1.info は同じことを繰り返している
#以下のように配列で作成して、eachで取り出す
puts "-----"
puts "作成したメニューを配列でまとめて、取り出す"
menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

# 変数menusを定義して配列を代入してください
menus = [menu1, menu2, menu3, menu4]

# menusに対して繰り返し処理を実行してください
index = 0

menus.each do |menu|
    puts "#{index}. " + menu.info
    index += 1
end

puts "each_with_indexメソッドを用いてもできた！"
menus.each_with_index do |menu, i|
    puts "#{i}. " + menu.info
    
end

#入力してもらうのと、その値を任意のデータ型で受け取れるようにしよう
puts "gets.chompメソッドを使って入力をしてもらう"

puts "お名前を入力してください"
name = gets.chomp #名前の入力をしてもらうコマンド
puts "#{name}さん、ようこそ！"

item = "お菓子"
price = 100
puts "1つ#{price}円の#{item}があります"
puts "数量を入力してください"
count = gets.chomp.to_i #入力待ち+入力した値を数値として受け取る
total_price = count * price

puts "#{count}個で、合計#{total_price}円になります"


