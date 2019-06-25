def median(x,y,z)
    m=(x+y+z)/3
    if (x-m).abs>(y-m).abs
        n=y
    else
        n=x
    end
    if (n-m).abs>(z-m).abs
        n=z
    end
    return n
end

puts '一つ目の数字を入力してください'
    x= gets.to_i 
puts '二つ目の数字を入力してください'
    y= gets.to_i 
puts '三つ目の数字を入力してください'
    z= gets.to_i 
    
puts(median(x,y,z))