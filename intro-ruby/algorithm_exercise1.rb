def greatest_common_divisor(x,y)
　　while y > 0 do
    　　x,y = y,x%y
　　end
　　return x
end

puts '最大公約数を求めます。'
puts '一つ目の数字を入力してください'
x= gets.to_i 
puts '二つ目の数字を入力してください'
y= gets.to_i 
    
puts "最大公約数は #{greatest_common_divisor(x,y)}"