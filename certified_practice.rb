#命名規則
#単語をつなげる場合には _ アンダースコアを使う
#数値から始めてはいけない
puts "命名規則のNG例"
puts "obj-1"
puts "_アンダースコア以外でつなげている"
puts "initialized?"
puts "_アンダースコア以外の記号を使っている"
puts "1_to_10"
puts "先頭に数値を使っている"

#ローカル変数の扱いについて
#ローカル変数はメソッドの中から外側のローカル変数を参照できない
foo = 1 #ローカル変数を定義

def bar
    foo　#メソッドからローカル線数の参照はできない→fooというメソッドとして認識され fooメソッドを探しにいく
end
#bar #fooメソッドがないためname errorになる
#baz #nameエラーになる。bazというメソッドが定義されていないため

#グローバル変数
#グローバル変数は、どこからで参照/更新できる
$foo = 1
$foo = 3
def bar
    puts $foo
end
bar

puts 1 + 2
#継承元を確認するメソッド superclass classの後に.superclassをつけうことで確認ができる
#integerとfloatは、Numericという数値を表現するクラスを継承している
puts 3.class.superclass #Numericという継承元のクラスが出てくる
puts 1.2.class.superclass #同上

puts 1.+(2)

#メソッドと引数 引数の( )はなくてもよい
def calc a, b
    a + b
end
puts calc 1,4

def calc(a,b)
    a + b
end
puts calc(48,52)

#デフォルトの引数を設定することもできる
def calc(a, b=100)
    a + b
end
puts calc(100) #片方の引数だけ渡して成立する
puts calc(50, 150)  #両方の引数を渡して、デフォルト値の更新もできる
#puts calc #引数が足りないとArgument errorが起こる

#キーワードを設定して引数を渡すことも可能
def calc(a:,b:)
    a + b
end
puts calc(a:100, b:200)
#puts calc(a:150) #Argument Errorになる
#puts calc(a:150, G:200) #Argument Errorになる

a = false ? 1 : 2
puts a

b = b || 58
puts b
c ||= 3
puts c

puts 1 && 2
puts 1 and 2

#文字列リテラル
a ="abcd"
p a
p a.class
b = "ab " + " cd"
p b
p b.class

#変数展開とダブルクオテーション シングルクオテーションでは変数展開できない
#変数展開は #{変数名} {}の括弧を使う
a = 1
p "a is #{a}"
p 'a is #{a}'

#文字列から数値に変換するメソッド 
puts "to_iメソッド integer型 整数へ変換"
puts "100".to_i
puts "123abc456".to_i #123部分が変換対象
puts "1.9".to_i #小数点が入っているものは整数部分だけが対象になる
puts "to_fメソッド float型 浮動小数へ変換"
puts "58.912".to_f
puts "123abc456".to_f #前半の数字部分が対象で .0となる 
puts "1.9.9".to_f #.が2つ以上ある場合には、最初の部分で区切られて以下は切り捨て
puts "to_rメソッド 1/3などの有理数を扱うrationalクラスに変換"
puts "1/3".to_r
puts ('2/3').to_r

#文字列の算術演算子
a = "ru" + "by"
puts a
puts a*3
#puts 3*a #左辺に数値がくるのはTypeerrorになる

#末尾に連結する場合は、<<メソッドを使うことができる
puts "<<メソッドは、「破壊的メソッド」である"
a = "ru"
puts a << "by"
puts a


#文字列の比較をしてみる 辞書順 アルファベット順
p "a" < "b" #trueを返す
p "z" < "b" #falseを返す
p "AB" < "AB" #falseを返す
p "AB" == "AB" #trueを返す
p "abc" <=> "abc" #0を返す

#文字数を参照するメソッド length / size
p "abcde".length
p "日本語".length
p "アメリカ".size

