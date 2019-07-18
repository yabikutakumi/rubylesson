class Dog
  def initialize(type, name, owner, sex)
    @type = type
    @name = name
    @owner = owner
    @sex = sex
    introduction()
  end

  def introduction()
    puts "ワンワン！(僕、#{@name}!)"
    puts "ワンワン！(犬種は#{@type}で、性別は#{@sex}だよ!)"
  end

  def bark(count)
    count.times do |num|
      print 'ワン'
    end
    puts ''
  end

  def run(distance)
    puts "ワン!(僕、#{distance}m走ったよ！)"
  end

  def eat(food)
    if food == '骨'
      puts 'ワン!(美味しい!)'
    elsif food == 'ステーキ'
      puts "ワンワン!(#{@owner}さん！最高！)"
    else
      puts '...ﾎﾞﾘﾎﾞﾘ'
    end
  end
end

hachi = Dog.new('ミニチュアピンシャア', 'メイちゃん', '中島さん', 'めす')
hachi.bark(1)
hachi.run(100)
hachi.eat('ステーキ')