#クラスを学ぼう
#クラスを定義する
class Menu
end

#設計図のことをクラスという
#「もの」のことをインスタンスという
#インスタンスは、この流れで生成していく
#1.クラス(設計図)を用意する 2.クラスからインスタンス(もの)を生成する 3.インスタンスに情報を入れる

#インスタンス変数を定義する (attr_accessor シンボルを使って)
class Menu
    attr_accessor :name
    attr_accessor :price
end

#attr_accessorについて
#アクセスメソッドと呼ばれるものの1つ
#attr_reader (参照のみ)・attr_writer (変更のみ)・attr_accessor(参照と変更の両方)
#インスタンス変数を通常定義する場合、その変数に応じてメソッドを作らねばならない
#例 nameメソッド
def name
    @name #@nameを参照するのみ
end

def name(value)
    @name = value #@nameの中身を変更して使える
end

#1つ1つインスタンス変数を作るごとにメソッド(def~end)を作らなければならない
#アクセスメソッドを使ってdef ~ end メソッド化することができる
#例 ~.nameでnameメソッドを呼び出せるようになる
class Menu
    attr_accessor :name
    attr_accessor :price

    #クラスの中でメソッドを定義する→.newで引き継いだインスタンス(変数)で使うことができる
    def info
        puts "料理名と値段が表示されます"
    end

end

#クラス(設計書)で定義したものから新しくインスタンスを生成する(今回で言えば、Menuクラスで定義したインスタンスを引き継いで使うことができる)
#「クラス名.new」を使い、「変数名 = クラス名.new」とすることで生成したインスタンスを変数で使いまわせる
menu1 = Menu.new

#インスタンス変数に値を代入する
menu1.name = "すし"
menu1.price = "800"
puts menu1.name
puts menu1.price

#Menuクラスで定義したインスタンス変数を引き継いで、インスタンスを作成していく(menu2という2番目のメニュー内容を作る)
menu2 = Menu.new
menu2.name = "そば"
menu2.price = 400
puts menu2.name
puts menu2.price

puts "-----"
puts "Menuクラス内で定義したメソッドを呼び出す"
menu2.info
puts menu2.name
puts menu2.price

#インスタンスメソッドの中でインスタンス変数を扱う
puts "特殊な変数selfが出てくる"
puts "self.変数名とすることで、インスタンス変数として扱える"
puts "self.nameやself.price"
puts "メソッド呼び出し側で menu1.name = すし menu.price=800 としてselfに代入される"

#インスタンスメソッドの中では、特殊な変数selfを使って。「self.変数名」とすることで
#インスタンス変数として扱うことができるようになる
#呼び出した箇所で指定した値をselfに入れて扱うことができる
class Menu 
    attr_accessor :name
    attr_accessor :price
    
    def info 
        return "#{self.name} #{self.price}円です"
    end
end

menu1 = Menu.new
menu1.name = "すし"
menu1.price = 1000
puts menu1.info

#合計金額を求めるメソッドを定義する
puts "合計金額を求めるメソッドを追加"
class Menu
    attr_accessor :name
    attr_accessor :price
    
    def info
      return "#{self.name} #{self.price}円"
    end
    
    def get_total_price(count)
        total_price = count * self.price
        puts "#{self.name}を#{count}個で 合計金額#{total_price}円です"
    end
end
menu1 = Menu.new
menu1.name = "すし"
menu1.price = 800
puts menu1.info
puts menu1.get_total_price(3)   

#3個以上の購入で100円割引する
puts "3個以上の購入で100円割引する"
class Menu
    attr_accessor :name
    attr_accessor :price
    
    def info
      return "#{self.name} #{self.price}円"
    end
    
    def get_total_price(count)
        total_price = count * self.price
        if count >= 3
            return total_price - 100
        else
            return total_price
        end
    end
end
menu1 = Menu.new
menu1.name = "すし"
menu1.price = 800
puts menu1.info
total_price = menu1.get_total_price(3)   
puts "合計金額は、#{total_price}円になります"


#initializeメソッドを定義する→特殊なメソッド .newをしたら initializeメソッドを呼び出す
puts "-----"
class Mode
    def initialize
        puts "initializeメソッドは特殊なメソッドだよ"
        puts "initilizeメソッドを使うと、.newでinitializeメソッドが自動で呼び出されるんだ"
    end
end
mode1 = Mode.new
puts "-----"

class Menu
    attr_accessor :name
    attr_accessor :price
    
    # initializeメソッドを定義してください
    def initialize
      self.name = "ピザ"
      self.price = 800
    end
    
    def info
      return "#{self.name} #{self.price}円"
    end
    
    def get_total_price(count)
      total_price = self.price * count
      if count >= 3
        total_price -= 100
      end
      return total_price
    end
end
menu1 = Menu.new
  
# menu1に対してinfoメソッドを呼び出して戻り値を出力してください
puts menu1.info

#initializeメソッドで引数を設定して、値を渡してみよう
puts "-----"
puts "initializeメソッドで引数を渡せるようにしよう！"
class Menu
    attr_accessor :name
    attr_accessor :price
    
    # initializeメソッドにキーワード引数設定・値を変数に代入
    def initialize(name: , price: )
      self.name = name
      self.price = price
    end
    
    def info
      return "#{self.name} #{self.price}円"
    end
    
    def get_total_price(count)
      total_price = self.price * count
      if count >= 3
        total_price -= 100
      end
      return total_price
    end
end
menu1 = Menu.new(name: "うどん", price: 560)
puts menu1.info
