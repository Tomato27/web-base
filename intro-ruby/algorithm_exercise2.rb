def str_number(sample_word)
    i = 0
    for word_itemise in sample_word.split("")
        i += 1
    end
    puts i
end

puts '文字列の長さを求めます。'
puts '文字列を入力してください'
x= gets

puts(str_number(x.chomp!))