heap = [1, 2, 3, 4, 5]

sz = heap.length
x = 0
def push(x, heap)
  # iは子ノードの番号
  # i = 6のとき
  #sz += 1
  i = heap.length
  while i > 0

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
  heap[i] = x

  return heap
end

p heap

# def pop()
