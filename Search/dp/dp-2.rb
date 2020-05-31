# 再帰なし
# 漸化式ベース
#dp[n][j] = 0
#dp[i][j]= dp[i+1][j] (j<w[i])
#        = max(dp[i+1][j], dp[i+1][j-w[i]]+v[i]) (それ以外)

N=4
W=5


DP = [
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
]

w = [2, 1, 3, 2]
v = [3, 2, 4, 2]

# iはDPの行
i = N - 1
while i >= 0
  # jはDPの列
  j = 0
  while j <= W
    if j < w[i]
      DP[i][j] = DP[i+1][j]
    else
      DP[i][j] = [ DP[i+1][j], DP[i+1][j-w[i]]+v[i] ].max
    end
    j += 1
  end
  i -= 1
end
p DP[0][W]

p DP
