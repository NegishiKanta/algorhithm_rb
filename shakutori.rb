# _*_尺取法_*_

# 数列aについて、連続する部分列の和がS 以上になるもののうち長さが最小のものの長さを求めなさい
# nは数列の要素の数
n = 10
# Sは条件
S = 15
# aは数列
a = [5, 1, 3, 5, 10, 7, 4, 9, 2, 8]
# s, tは数列の区間。　[s, t)なのでs,s+1...t-1 を示す
s = 0
t = 0
# sumは部分列の和
sum = 0
# resは答えとなる長さ。　はじめは考えうる最大で、徐々に更新
res = n+1
while s < t
while t < n && sum < S
  # sumにa[t]を追加
  sum += a[t]
  # t++
  t += 1
end

# sumがSに達しない場合
if sum < S
  # 終了
  break
#　そうでなければ
else
  # resを更新 現在のresか, t-sか 小さい方をresとする
  res = [res, t-s].min
end
sum -= a[s]
s += 1
end

p res
