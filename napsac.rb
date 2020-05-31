N, W = gets.split(" ").map(&:to_i)

LS = []
LSW = []
LSV = []

for i in 0..N-1 do
  vw = gets.split(" ").map(&:to_i)
  LS << vw
  LSW << vw[0]
  LSV << vw[1]
end


def rec(i, j)
  res = 0
  if i == N
    # もう品物は残っていない
    res = 0
  elsif j < LSW[i]
    #この品物は入らない
    res = rec(i + 1, j)
  else
    #入れない場合と入れる場合の両方を試す
    #ここに条件を適用する?
    res = [ rec(i + 1, j), rec(i + 1, j - LSW[i]) + LSV[i] ].max
  end
  res
end

puts "#{rec(0, W)}"
