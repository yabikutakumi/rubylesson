sum = 0
input = gets.to_i
(1..input).each do |num| 
  # 2のヒント: この↓のコードを、条件分岐の中に入れてあげる(num % 2 == 0)...？
  if num % 2 ==0
  sum += num
  end
end
puts sum