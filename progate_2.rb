#配列、ハッシュやら

#配列の基礎
languages = ['日本語', '英語', 'スペイン語']
puts languages
puts languages[2]

#配列内の値を変数展開する
puts "#{languages[2]}を話せます"

#each文の基礎
languages.each do |language|
    puts "#{language}を話します"
end

#scope: 変数の使える範囲のことをいう / eachで定義した変数はeach文内でしか使えない
border = "--------"

languages.each do |language|
    puts border
    puts "#{language}が好きです"
end

#ハッシュの基礎
exam = {"subject" => "Math", "score" => 80}
puts exam

#ハッシュの要素を使う・更新する・追加する
puts exam["subject"] #キーsubjectの値を出力する

exam["subject"] = "Science" #対象のキーの値を更新する
puts exam["subject"]

exam["grade"] = "good" #ハッシュにキーと値を追加する
puts exam["grade"]

puts exam #追加されたキーと値も出力される

#シンボル 文字列をシンボルとして扱うことができる :(コロン)を前につける
#以下の出力は同じ結果を得られる
puts "ruby"
puts :ruby

#シンボルを使って定義したら、シンボルを使って呼び出す必要がある
exam = { :subject => "Math", :score => 80}
puts exam[:subject]
puts exam[:score]

#ハッシュのキーをシンボルとで定義するには省略して書くこともできる
#右の2つは同じ意味を持つ :name => ・ name:
exam = { subject: "Math", score: 80 }
puts "#{exam[:subject]} #{exam[:score]}点でした"

#ハッシュのキーと値の書き方 基礎まとめ
#1. キーを文字列として定義する・呼び出しも文字列を使う
user = { "name" => "Suzuki", "age" => 21}
puts user["name"]
#2. キーをシンボルとして定義する・呼び出しもシンボル
user = { :name => "Suzuki", :age => 21 }
puts user[:name]
#3. キーをシンボルとして定義する(省略形)・呼び出しもシンボル
user = { name: "Suzuki", age: 21}
puts user[:name]

#ない値を取得しようとするとnilで何も表示されない
puts user[:country]

#if文でnilを扱う nilは値がないということ falseと同じ認識がされてelse以降の処理になる
exam = { :subject => "Math"}
if exam[:score]
    puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
else
    puts "#{exam[:subject]}の結果はありません"
end

#配列にハッシュを入れて使うこともできる
users = [{ name: "Tanaka", age: 58},
         { name: "Yoshida", age: 33},
         { name: "Gon", age: 99}
        ]
puts users[1]
puts users[2][:name]
#このputs users[2][:name]という値の取得と出力は以下の2つを1行にまとめて処理している
user = users[2]
puts user[:name]

#each文で配列の中のハッシュを使う
puts "each文を使って取り出してみる"
users.each do |user|
    puts "#{user[:name]}さんは#{user[:age]}歳です"
end

#応用問題
#キャラクターの名前出力と年齢があるなしに応じて表示する内容を変更するプログラムを作成する
characters = [
    { name: "にんじゃわんこ", age: 14 },
    { name: "ひつじ仙人"},
    { name: "ベイビーわんこ", age: 5},
    { name: "とりずきん"} 
]

characters.each do |character|
    puts "========================"
    puts "名前は#{character[:name]}です。"
    if character[:age]
        puts "年齢は#{character[:age]}歳です"
    else
        puts "年齢は非公開です"
    end
end