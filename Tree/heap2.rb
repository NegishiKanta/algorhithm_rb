heap = [0, 1, 2, 3, 4, 5, 6]
sz = 0

#void push(x: 追加する値)

# iは子ノードの番号
# i = 6のとき
i = 6

while i > 0

  sz += 1
  i = sz

  # pは親のノード番号 int型であることが大事

  p = (i - 1) / 2

  # 逆転してない(xの親がxより小さい)なら抜ける
  if heap[p] <= x
    break
  end
  # 逆転していたら 親を子のいた位置におろす
  heap[i] = heap[p]
  i = p
end


#int pop{
# 最小値

begin
ret = heap[0]



# 根に持ってくる値
int x = heap[--sz]

# 根からおろしていく
int i = 0;

while i * 2 + 1 < sz
  # 子同士を比較 a = 右の子, b = 左の子 のindex
  a = i * 2 + 1
  b = i * 2 + 2
  # heap[b]がheap[a]より小さければ
  if b < sz && heap[b] < heap[a]
    # a, bを入れ替える
    a = b
  end

  if heap[a] >= x
    break
  end
  # 子の数字を持ち上げる
  heap[i] = heap[a]
  i = a
end

heap[i] = x
# retを返す
return ret

end
