puts "好きな数字を入力してください"
number = gets.chomp.to_i

if number == 0
    puts "0では計算を実行できません"
elsif number % 15 == 0
    puts "FizzBuzz (5でも3でも割り切れます)"
elsif number % 5 == 0
    puts "Fizz (5で割り切れます)"
elsif number % 3 == 0
    puts "Buzz (3で割り切れます)"
else
    puts "Not FizzBuzz (5と3どちらでも割り切れません)"
end


#入力した番号で運勢を占う
puts "------------------"
puts "占いだよー1-100の好きな番号を入力してください： "
number = gets.to_i

if number % 21 == 0
    puts "大吉　大当たり～！"
elsif number % 6 == 0
    puts "中吉 まずまず当たり～！"
elsif number % 4 == 0
    puts "小吉 まあまあいいことあるよ！"
elsif number % 3 == 0
    puts "吉 がんばっていこう！"
elsif number % 5 == 0
    puts "凶 おーと悪い予感がする…"
elsif number % 7 == 0
    puts "大凶 がーん　お先真っ暗…"
else
    puts "占いなんてつゆ知らず"
end