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

puts "breakの例"
i = 0
names = ["Python", "Ruby", "SQL", "Javascript"]
names.each do |name|
    i += 1
    if i == 3
        break
    end
    p [i, name]
end

puts "nextの例"
i = 0
names = ["Python", "Ruby", "SQL", "Javascript"]
names.each do |name|
    i += 1
    if i == 3
        next
    end
    p [i, name]
end
puts "---nextを使うことで対象の条件が成立したときスキップして、次の繰り返し処理に移る"


#メソッドの呼び出し
puts "メソッドの呼び出し方"
puts "オブジェクト.メソッド名(引数1, 引数2, …)"
puts "この構文のオブジェクトはレシーバーともよばれる"
puts "例 cat.size catはオブジェクトであり、レシーバーとも呼ばれる"

#インスタンスメソッド
puts "インスタンスメソッド"
p 10.to_s
p Time.now.to_s

#クラスメソッド
puts "クラスメソッド"
p "Array.new" #新たな配列を作る
p "File.open(some_file)" #新たなファイルオブジェクトを作る
p Time.now #新たなTimeオブジェクトを作る

#関数的メソッド
print "関数的メソッド"
print "hello!" #文字列を出力する
#sleep(5) 指定された秒数の間処理を休止する
puts "hello!"
puts "Ruby"

puts "putsとprintの違いは、文字列を表示した後に改行するかどうか"
puts "printは改行しない 後続の処理も同じ行に表示される"
puts "putsは改行してくれる 後続の処理は改行して表示される"

puts "---クラスメソッドの記述方法 .ドット と :: コロンx2は同じこと"
puts "例: Array.new / Array::new"

#メソッドの定義
def hello(name="Python") #(引数名= ~ )でデフォルトの値を設定できる
    puts "Hello #{name}"
end
hello("Ruby") #メソッドを定義すれば、レシーバを省略して、関数的メソッドとして呼び出せる！
hello

#複数の引数 引数のデフォルト値は、右端から必ず埋めてあること
def func(a=3, b=1, c=3) 
    puts a + b + c
end
func
func(1,1,1)

def volume(x, y, z)
    return x * y * z
end
puts volume(2,3,4)
puts volume(10,20,30)

def myloop
    while true
        yield #ブロックを実行する
    end
end

num = 1
myloop do 
    puts "num is #{num}"
    break if num > 10
    num *= 2
end

#引数の数が不定のメソッド (*変数名)を使う
puts "*argsで不特定の数量の引数を設定できる"
puts "pもしくはprintで出力すると配列で表示する"
def foo(*args)
    args
end
p foo(1,2,3,4,5)

def foo1(a, *args)
    [a, args]
end
p foo1(12, 100, 101, 102)

def foo2(a, *args, c)
    [a, args, c]
end
p foo2(1,12)
p foo2(1, 101, 102, 103, 500)

#キーワード引数
puts "---キーワード引数を使ってみよう"
def area2(x:0, y:0, z:0)
    xy = x * y
    yz = y * z
    zx = z * x
    (xy + yz + zx) * 2
end
p area2(x:2, y:3, z:4) #キーワード:値で渡す
p area2(x:2, z:3) #yを省略=デフォルト値を使う

$i = 1
def volume2(a:1 , b:1, c:1)
   calc = a * b * c
   p "#{$i}： #{calc} 結果は…"
   $i += 1
   if calc == 0
    return "0です"
   elsif calc % 15 == 0
    return "FizzBuzz(5でも3でも割り切れるよ)"
   elsif calc % 5 == 0
    return "Fizz(5で割り切れるよ)"
   elsif calc % 3 == 0
    return "Buzz(3で割り切れる)"
   else
    return "Nothing(5と3どちらでも割り切れないよ)"
   end
end
puts volume2(a:1, b:3, c:5)
puts volume2(a:4, b:5)
puts volume2(a:3, b:9)
puts volume2(a:2, b:8, c:19)

#定義に存在していないキーワード引数を受け取る場合には **argsを設定すると受け取れるようになる
puts "---**argsを引数に設定すると、定義していないキーワードでも値を受け取れる(ハッシュ)"
def meth(x: 0, y: 0, z:0, **args)
    [x, y, z, args]
end
p meth(x:2, y:3, g:5, w:2)
p meth(x:1, y:1)


#通常の引数とキーワード引数を一緒に使うこともできる
def meth(a, b, c: 1)
    return a * b * c
end
p meth(2,2, c:2)

#ハッシュを作り、ハッシュを引数に渡す
puts "---ハッシュを作成し、引数として渡してメソッドを実行してみる"
puts "---ハッシュで展開するときは、**(ハッシュの)変数名 を使う"
def area2(x: 0, y: 0, z: 0)
    x * y * z
end
numbers = {x: 3, y: 3, z: 3}
p area2(**numbers)
args1 = {x: 2, y: 3, z: 4}
p area2(**args1)

#配列のデータを引数として渡すこともできる ただし、引数の数は一致していること！
puts "---配列を作成し、引数として渡してメソッドを実行してみる"
puts "---配列で展開するときは、*(配列の)変数名 を使う"
def area2(x, y, z)
    x * y * z
end
args2 = [1, 2, 3]
puts area2(*args2)

#メソッドの呼び出し時に直接ハッシュ・配列を
