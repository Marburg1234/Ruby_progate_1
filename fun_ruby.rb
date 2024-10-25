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

#繰り返し処理
#timesメソッド 一定の回数だけ同じ処理をさせる
puts "繰り返し処理 timesメソッド"
3.times do 
    puts "3回繰り返すよ"
end

#入力した値の数値分だけ繰り返しをさせることもできる
puts "countに代入した数値分だけ繰り返すよ"
$i = 1
count = gets.to_i
count.times do 
    puts "#{$i} 入力した数値分だけ繰り返すよ"
    $i += 1
end

puts "do |i|の形でローカル変数をtimesメソッドで定義できる"
3.times do |i|
    puts "#{i+1}回目の繰り返しです"
end

sum = 0
for i in 1..5
    sum = sum + i
end
puts sum

from = 10
to = 20
sum = 0
for i in from..to
    sum = sum + i
end
puts sum

#上で出てきた ..や...は範囲オブジェクトというオブジェクトを作る記号のこと

names = ["Python", "Ruby", "SQL", "Javascript"]
puts "---配列データをfor文を使って取り出す"
for name in names do
    puts name
end

puts "---配列データをeach文を使って取り出す"
names.each do |name|
    puts name
end

#while文　条件が成り立つtrueである限り繰り返し処理が実行される
i = 1
while i <= 10
    puts i
    i += 1
end

sum = 0
i = 1
while i <= 5
    sum += i
    i += 1
end
puts sum 

sum = 0
i = 1
while sum < 50
    sum += i
    i += 1
end
puts sum


#until文　while文⇔until文
#until文は、trueになるまで処理を繰り返す falseである限り処理をする
puts "---until文を使う"
sum = 0
i = 1
until sum >= 50
    sum += i
    i += 1
end
puts sum

puts "---while文に条件!をつけて、untilと同じ結果を得る"
sum = 0
i = 1
while ! (sum >= 50)
    sum += i
    i += 1
end
puts sum

puts "---eachを使って、1..5を足した合計を表示する"
sum = 0
(1..5).each do |i|
    sum += i
end 
puts sum

puts "---eachのもう1つの記述方法で試してみる"
sum = 0
(1..5).each {|i|
    sum += i
}
puts sum


