#予約語を使うと構文エラーになる
#end = 1 #syntax error
#p end #syntax error

#多重代入 複数の変数代入を一度に1つの式でできる
#通常の代入
a = 1
b = 2
c = 3 
#一括で代入できる
a, b, c = 1, 2, 3
p a, b, c

#*をつけると余った値を*のついた変数に代入できる
a, b, *c = 1, 2, 3, 4, 5
p a,b,c

a, *b, c = 1, 2,3,4,5
p a, b, c

#変数の中の値を入れ替える
#tmpを使う方法
puts "---tempを使って変数を入れ替えてみる"
a = 30 
b = 50
temp = a
a = b 
b = temp
p a, b

puts "---多重代入を使って変数の値を入れ替えてみる"
a = 10
b = 20
a, b = b, a
p a, b

array = ["apple", "banana"]
p array[0]
p array[1]

puts "西暦を平成二直して計算できます"
puts "現在は西暦何年ですか？"
current_year = gets.to_i
heisei = current_year - 1988
puts "平成：#{heisei}年です"

#emptyメソッド文字列の長さ 文字数があるかないかを確認するメソッド
p "".empty? #文字列がない→ falseを返す
p "AAA".empty? #文字列がある→trueを返す

#case文を使った条件分岐の例
array = ["a", 1, nil]
array.each do |item|
    case item
    when String
        puts "item is a String"
    when Numeric
        puts "item is a Numeric"
    else
        puts "item is something"
    end
end

#オブジェクトの同一性 全てのオブジェクトに対して与えられる一意の番号(ID)
puts "objectのIDを取得表示するよ object_idメソッド"
a = 1080
p a.object_id
b = 10
c = a
#2つのオブジェクトが同じかどうか(IDが同じかどうか)を確かめる　
puts "2つのオブジェクトのIDが同じか確かめる equal_メソッド"
p a.equal?(b) #falseを返す
p c.equal?(a) #trueを返す


