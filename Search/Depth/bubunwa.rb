# 部分和問題 

a = [1, 2, 6, 7, 8, 12, 13]
# nは配列のサイズ
n = 7
# kは部分和
k = 20

def dfs(i, sum, n, k, a)
  puts sum
  puts i

  # カウンタiが最後==n までいったら
  if i == n
    # sum==k かどうかチェック
    return sum == k
  end

  # i < nなら以下

  # a[i]を使わずにsum == kまでたどり着く場合
  if dfs(i+1, sum, n, k, a)
    return true
  end
  # a[i]を使うとsum == kにたどり着く場合
  if dfs(i+1, sum+a[i], n, k, a)
    return true
  end

  # 以上でない場合、a[i]の使用にかかわらずkが作れないのでfalse
  return false
end

if dfs(0, 0, n, k, a)
  print("Yes\n")
else
  print("No\n")
end

# 根底にあるのは#
