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