require "./menu"
# エンコーディングをUTF-8に設定
# encoding: utf-8

menu1 = Menu.new(name: "ピザ", price: 800)
menu2 = Menu.new(name: "すし", price: 1000)
menu3 = Menu.new(name: "コーラ", price: 300)
menu4 = Menu.new(name: "お茶", price: 200)

menus = [menu1, menu2, menu3, menu4]

menus.each_with_index do |menu, i|
    puts "#{i}. #{menu.name}"
end

puts "-----"
puts "メニューを選択してください"

#選択をしてもらうのと値を受け取る
puts "個数を入力してください(3個以上で100円引きになります)" 
order_number = gets.chomp.to_i

selected_menu = menus[order_number]
puts "選択した商品は#{selected_menu.name}です"

count = gets.chomp.to_i
puts "お会計は、#{selected_menu.get_total_price(count)}円です"
