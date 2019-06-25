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
def selection_sort(target) #選択ソートver.2
  (target.size-1).times do |index|
    tmp_item, tmp_index = target[index], index
      for i in index...target.size
        tmp_item, tmp_index = target[i], i if target[i] < tmp_item
      end
    target[index], target[tmp_index] = target[tmp_index], target[index]
  end
  return target
end

selection_sort(target)

# hand = hand.sort!は使用しないでください。
# 並び替えた配列でHandオブジェクトのインスタンスを作成
hand = Hand.new(target)
puts "======after sort======"
puts hand
