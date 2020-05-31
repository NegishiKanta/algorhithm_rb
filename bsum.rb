a = [1, 2, 4, 7]
k = 13
n = 4

def bool(i, sum, a)
  print("i=#{i}, sum=#{sum}\n")
  if i == 4
    return sum == 13
  end
  p bool(i+1, sum, a)
  #p bool(i+1, sum+a[i], a)
  if bool(i+1, sum, a)
    print("i+1=#{i+1}, sum=#{sum}\n")
    return true
  end
  if bool(i+1, sum+a[i], a)
    print("i+1=#{i+1}, sum+a[i]=#{sum+a[i]}\n")
    return true
  end
  print("false_reach\n")
  return false
end

if bool(0, 0, a)
  print("Yes\n")
else
  print("No\n")
end
