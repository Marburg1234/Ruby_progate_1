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

# 数値を英語に変換する関数
def number_to_words(number)
  # 英語の基本表現
  ones = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
          "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]

  tens = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]

  thousands = ["", "Thousand", "Million", "Billion", "Trillion"]

  return "Zero" if number == 0

  result = ""
  thousand_count = 0

  while number > 0
    # 3桁ごとに分割して変換
    remainder = number % 1000
    if remainder != 0
      result = "#{convert_hundreds(remainder)} #{thousands[thousand_count]} #{result}".strip
    end
    number /= 1000
    thousand_count += 1
  end

  result
  end
  
  # 3桁の数値を変換する補助関数
  def convert_hundreds(number)
    ones = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
            "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
  
    tens = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  
    result = ""
  
    # 100の位
    if number >= 100
      result += "#{ones[number / 100]} Hundred "
      number %= 100
    end
  
    # 20未満の数は特殊処理
    if number < 20
      result += ones[number]
    else
      result += "#{tens[number / 10]} #{ones[number % 10]}"
    end
  
    result.strip
  end

  
# 使用例
#amount = 200000
#入力できるように変更してみる
puts "好きな数字を入力してね。アルファベット表記になるよ！"
amount = gets.to_i
puts number_to_words(amount)

#FizzBuzz again
puts "FizzBuzzゲーム 2"
puts "好きな数字を入力して始めましょう： "
number = gets.to_i

if number == 0
  puts "0でした 他の数値を入力してください"
elsif number % 21 == 0
  puts "FizzBuzz (7と3両方で割り切れます)"
elsif number % 7 == 0
  puts "Fizz(7で割り切れます)"
elsif number % 3 == 0
  puts "Buzz(3で割り切れます)"
else
  puts "None (7でも3でも割り切れません)"
end
