a = 1
b = 2

puts '====='
puts '# at first part'
puts '====='
puts "a is defined => #{a}" if defined?(a)
puts "b is defined => #{b}" if defined?(b)
puts "c is defined => #{c}" if defined?(c)
puts "d is defined => #{d}" if defined?(d)
puts "e is defined => #{e}" if defined?(e)
puts "f is defined => #{f}" if defined?(f)
puts '====='
puts ''

if a == 1
  c = 3
  puts '====='
  puts '# in condition branch'
  puts '====='
  puts "a is defined => #{a}" if defined?(a)
  puts "b is defined => #{b}" if defined?(b)
  puts "c is defined => #{c}" if defined?(c)
  puts "d is defined => #{d}" if defined?(d)
  puts "e is defined => #{e}" if defined?(e)
  puts "f is defined => #{f}" if defined?(f)
  puts '====='
  puts ''
end

def function_f(a)
  puts '====='
  puts '# in function f'
  puts '====='
  d = 4
  puts "a is defined => #{a}" if defined?(a)
  puts "b is defined => #{b}" if defined?(b)
  puts "c is defined => #{c}" if defined?(c)
  puts "d is defined => #{d}" if defined?(d)
  puts "e is defined => #{e}" if defined?(e)
  puts "f is defined => #{f}" if defined?(f)
  puts '====='
  puts ''
end

e = 5
function_f(a)
f = 6

puts '====='
puts '# at last part'
puts '====='
puts "a is defined => #{a}" if defined?(a)
puts "b is defined => #{b}" if defined?(b)
puts "c is defined => #{c}" if defined?(c)
puts "d is defined => #{d}" if defined?(d)
puts "e is defined => #{e}" if defined?(e)
puts "f is defined => #{f}" if defined?(f)
puts '====='