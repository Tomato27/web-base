blogs=[]

while true
  
  index = ["以下より行う操作を選んでください", "1:ブログを作成する", "2:作成されたブログを見る", "3:ブログアプリを終了する"] # 1
    index.each do |content| # 2
        puts content
    end
  number = gets.to_i

  if number == 1
    blog = {} # ハッシュの宣言
    puts '1:ブログを作成する'
    puts 'ブログのタイトルを入力してください'
    blog[:title] = gets # ハッシュのキーに値を持たせる
    puts 'ブログの本文を入力してください'
    blog[:content] = gets # ハッシュのキーに値を持たせる
    blogs << blog # 保存した値を配列に代入
    puts "------入力確認------"
    puts "タイトル：#{blog[:title]}" # blogハッシュからキーを指定して値を出力
    puts "本文：#{blog[:content]}" # blogハッシュからキーを指定して値を出力
  elsif number == 2
    blogs.each do |blog|  # 配列のブログ情報を変数blogに代入
    puts "タイトル: #{blog[:title]}" # 取り出した配列要素からキーを指定してタイトルを取り出す
    puts "本文: #{blog[:content]}" # 取り出した配列要素からキーを指定して内容を取り出す
    puts "-----------"
   end
  elsif number == 3
    puts '3:ブログアプリを終了する'
    break
  else
    puts '1~3の数字を入力してください'
  end
end