for i in 1..40 do
  if i%3==0 
    puts "hoge"
  elsif i.to_s.include?("3") 
    puts "hoge"
    else
      puts i
    end
end