N = 5
A = [1, 4, 3, 2, 4]

def init_min(init_min_val)
  for i in 0..N-1
    SEG[i+NUM-1] = init_min_val[i]
  end

  j = NUM-2
  while j >= 0
    p j
    SEG[j]=[SEG[2*j+1],SEG[2*j+2]].min
    print("#{SEG[2*j+1]}:#{SEG[2*j+2]}\n")
    j -= 1
  end
end

def update_min(k,x)
  k += NUM-1
  # k番目を更新
  SEG[k] = x
  # 更新に伴い他の値を変更
  while k >= 0
    k = (k-1)/2
    SEG[k] = [SEG[k*2+1],SEG[k*2+2]].min
  end
end

# 指定した範囲内[p, q)の最小値を探す。
def query_min(p, q)
  # p が qより小さいなら
  if q<=p
    # 初期値を返す
    return ide_ele_min
  end

  p += NUM-1
  q += NUM-2

  # 答えresを単位元で初期化
  res=IDE

  # qとpの差が1より大きいとき
  while q-p>1
    # pが偶数なら
    if p&1 == 0
      res = [res,SEG[p]].min
    end

    # qが奇数なら
    if q&1 == 1
      res = [res,SEG[q]].min
      q -= 1
    end

    # pを2で割る
    p = p / 2
    # q-1を2で割る
    q = (q-1)/2
  end

  if p == q
    res = [res,SEG[p]].min
  else
    res = [[res,SEG[p]].min,SEG[q]].min
  end
  return res
end


#####単位元######
IDE = 10**10

#num_min:n以上の最小の2のべき乗
# num_min = 8
NUM =2**(N-1).bit_length()
SEG=[IDE]*2*NUM

#init
init_min(A)
#update_min(0, 3, SEG, num_min)
p SEG


#A[1]~A[3]の最小値
print(query_min(0,4)) #2
