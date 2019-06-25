require 'rubycards'
include RubyCards

# Handインスタンスの生成
hand = Hand.new

# Deckインスタンスの生成
deck = Deck.new
puts "======before shuffle======"
puts deck

# デッキのシャッフル
deck = deck.shuffle!
puts "======after shuffle======"
puts deck

# デッキからカードを10枚引く
hand = hand.draw(deck,10)
puts "======after draw======"
puts hand

# handオブジェクトを配列に型変換
target = hand.to_a

# FIXME （targetを昇順にソートしてください）
def selection_sort(target) #選択ソート
  i = 0
    while i < (target.length) -1 do
      indexMin = i
      k = i + 1
      while k < (target.length) do
        if target[k] < target[indexMin]
          indexMin = k
        end
        k = k + 1
      end
      target[indexMin], target[i] = target[i], target[indexMin]
      i = i + 1
    end
  return target
end

selection_sort(target)

# hand = hand.sort!は使用しないでください。
# 並び替えた配列でHandオブジェクトのインスタンスを作成
hand = Hand.new(target)
puts "======after sort======"
puts hand
