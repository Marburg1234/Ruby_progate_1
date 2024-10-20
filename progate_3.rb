#メソッドを学ぼう
def introduce 
    puts "こんにちは"
    puts "私はにんじゃわんこです"
    puts "14歳です"
end
#メソッドを呼び出す
puts "---自己紹介---"
introduce

def print_info
    puts "わんこでんきへようこそ！"
    puts "今日はヘッドホンがセール中です！"
end
# print_infoメソッドを呼び出してください
print_info

#引数について学ぶ 引数はメソッド内では変数として扱うことができて#{変数名}で変数展開もできる
def introduce(name)
    puts "こんにちは"
    puts "私は#{name}です"
end
introduce("カツのカイシュウ")

#メソッドを使うことで処理をまとめられる 同じ処理を繰り返し記述する必要がなくなる
def print_info(item)
    puts "--------------"
    puts "わんこでんきへようこそ！"
    puts "今日は#{item}がセール中です！"
    puts "------------"
end
print_info("ヘッドホン")
print_info("テレビ")

puts "メソッド化しない悪い例↓"
puts "------------"
puts "わんこでんきへようこそ！"
puts "今日はヘッドホンがセール中です"
puts "わんこでんきへようこそ！"
puts "今日はテレビがセール中です"

puts "----------"
puts "each文でも同じようになる！"
items = ["ヘッドホン", "テレビ"]
items.each do |item|
    puts "-----"
    puts "にゃんこでんきへようこそ！"
    puts "今日は#{item}がセール中なんだにゃ"
end

#引数は複数扱うこともできる　その場合は,(カンマ)で区切ること！
def print_info(item, price)
    puts "わんこでんきへようこそ！"
    puts "今日は#{item}がセール中で#{price}円です"
end
#複数の引数を使う場合、順番に対応していること！
print_info("SDカード", 1200)

#戻り値のあるメソッド　定義と受け取り returnを使う
def discount(price)
    return price / 2
end
puts "テレビがセール中です！"
#メソッドの呼び出しと引数を渡す + 変数に戻り値を格納して受け取る
half_price = discount(10000)
puts "特別価格で#{half_price}円です"

#true or falseをreturnとして返すこともできる 
#真偽値を返すメソッドには末尾に?をつける！！
def shipping_fee?(price)
    return price >= 5000
end
#if文でメソッドの呼び出しと結果に基づいて処理を変える
if shipping_fee?(10000)
    puts "5000円以上のお買い上げなので送料はいただきません"
else
    puts "追加で送料がかかります"
end

#引数はキーワードを使って明示的に設定することも可能 キーワード引数
# 1.シンボルの省略形で引数を定義 + 呼び出す箇所でも同じ形を使う ex) name: ~, item: ~
puts "---キーワード引数---" 
def buy(item:, price:, count:)
    puts "#{item}を#{count}台のお買い上げです"
    puts "合計金額は#{price}円です"
end
buy(item: "テレビ", price: 30000, count: 1)
