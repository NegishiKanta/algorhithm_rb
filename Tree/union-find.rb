# Union-Find木

PAR = []
RANK = []

def init(n)
  for i in 0..n-1
    PAR[i] = i
    RANK[i] = 0
  end
end

def find(x)
  if PAR[x] == x
    return x
  else
    return PAR[x] = find(PAR[x])
  end
end

def unite(x, y)
  x = find(x)
  y = find(y)
  if x == y
    return
  end
  # xのrankがyより小さいなら
  if RANK[x] < RANK[y]
    # xの親はy
    PAR[x] = y
  else
    # xのrankがyより大きいなら
    # yの親はx
    PAR[y] = x
    # xとyのrankが同じだったとき
    if RANK[x] == RANK[y]
      RANK[x] += 1
    end
  end
end

# xとyが同じ集合に属するかどうか
def same(x, y)
  return find(x) == find(y)
end


n = 5
init(5)

p PAR
p RANK
