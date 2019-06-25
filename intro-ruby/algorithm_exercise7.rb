def janken()
  while(true)
    str=<<-EOS
    数字を入力してください。
    0: グー
    1: チョキ
    2: パー
    EOS
    puts str
    
    x= gets.to_i 
    if(x>2)
      puts("0,1,2のいずれかの数値を入力してください。")
      next
    end
    
    if((x-rand(0..2))%3==2)
      puts("あなたの勝ちです。")
      break
    elsif((x-rand(0..2))%3==1)
      puts("あなたの負けです。")
      break
    else
      puts("あいこです。")
      
    end
  end
end
  
  
janken()