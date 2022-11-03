=begin 

①入力　金魚の数 ポイの数 耐久値
②処理　

ポイが０になるまでループを回す＝ポイがなくなったらゲームオーバー
ポイの耐久性 - １匹目の金魚の重さ= 
ポイの耐久性が０になった時
新しいポイのでまた１匹目をすくう
新しいポイの作成＝ポイの耐久性をたす
再びポイの耐久性 - １匹目の金魚の重さをして判定
ポイの数を減らす
ポイの耐久性が０以外の時　
獲得した金魚の数を増やす
金魚の数を減らす
その耐久性の数でポイの耐久性 - ２匹目の金魚の重さを判定する



③出力　何匹の金魚をゲットできるか
=end
# 金魚の数
goldfish_number = gets.to_i

# ポイの数 
poi_number = gets.to_i

# 耐久値の数
resistance = gets.to_i

# 獲得した金魚の数
gets_goldfish = 0

# 金魚の重さ
goldfish_wight_array = []

# 金魚の重さ
goldfish_number.times{ 
  goldfish_wight = gets.to_i
  goldfish_wight_array.push(goldfish_wight)
}


i = 0
# ポイの数が０になるまでループ回す
while poi_number != 0
  # ポイの耐久性-１匹目の金魚の重さを引く
  left_resistance -= resistance - goldfish_wight_array[0]
  # もし答えが０だったら、ポイの数を減らす、耐久性を増やす＝新しいポイの作成。
  # 新しいポイで１匹目をもっかいすくう
  if left_resistance == 0
    left_resistance += resistance
    poi_number -= 1
    left_resistance -= resistance - goldfish_wight_array[0]
  else 
    # ０以外の時獲得金魚の数を１匹増やす。残りの耐久性で２匹目をすくう
    i +=1
    gets_goldfish += 1
    left_resistance - goldfish_wight_array[1]
  end
  
end 
puts i