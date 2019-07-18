class Horse
    def initialize(type, name, owner, sex, age)
      @type = type
      @name = name
      @owner = owner
      @sex = sex
      @age = age
      introduction()
    end
  
    def introduction()
      puts "ヒヒーン！(僕、#{@name}!)"
      puts "ヒヒーン！(馬種は#{@type}で、性別は#{@sex}、歳は#{@age}歳だよ!)"
    end
  
    def neigh(count)
      count.times do |num|
        print 'ヒヒーン'
      end
      puts ''
    end
  
    def run(distance)
      if @age <= 5
        distance *= 10
      end
      puts "ヒヒーン!(僕、#{distance}m走ったよ！)"
    end
  
    def eat(food)
      if food == '骨'
        puts 'ヒヒーン!(美味しい!)'
      elsif food == 'ステーキ'
        puts "ヒヒーン!(#{@owner}さん！最高！)"
      else
        puts '...ﾎﾞﾘﾎﾞﾘ'
      end
    end
  end
  
  deepimpact = Horse.new('サラブレッド', 'ディープインパクト', 'kabi', 'オス', 3)
  deepimpact.neigh(100)
  deepimpact.run(100)
  deepimpact.eat('ステーキ')