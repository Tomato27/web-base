def change_up_down(word)
  string=word.split("")
  for i in 0..word.length-1 
    if(string[i].upcase==string[i])
      string[i]=string[i].downcase
    else
      string[i]=string[i].upcase
    end
  end
  puts string.join
end

change_up_down('Apple')
change_up_down('Google')
change_up_down('IBM')
change_up_down('ITbookHD')