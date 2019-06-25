def repeat_string(str)
    word = str.size
    if word >= 5
       p str.slice(0,4) *3
    else
       p str*3
    end
end

repeat_string('Python')
repeat_string('Go')
repeat_string('C++')
