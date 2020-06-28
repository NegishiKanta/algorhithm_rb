# 最小値のpop

 # 数列
heap = [0, 2, 1, 4, 5, 3]



# szはheapの最後尾番号
# xはheapから最小値を取り出すとき、末尾から根に移動された値

# heapの最小値を返す & 横の並び替え
def pop(heap, sz)

  sz = heap.length-1
  ret = heap[0]
  x = heap[sz]
  heap.delete_at(sz)

  i = 0
  while i*2+1 < sz
    a = i * 2 + 1
    b = i * 2 + 2
    print("heap[a]=#{heap[a]}, x=#{x}\n")
    # heap[b]がheap[a]より小さければ
    if b < sz && heap[b] < heap[a]
      # a, bを入れ替える
      a = b
    end
    print("heap[a]=#{heap[a]}, x=#{x}\n")

    if heap[a] >= x
      break
    end
    #print("heap[a]=#{heap[a]}, x=#{x}\n")
    # 子の数字を持ち上げる
    heap[i] = heap[a]
    i = a
  end

  heap[i] = x

  return [ret, heap]

end

p pop(heap, sz)
