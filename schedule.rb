n = gets.chomp!.to_i
s = gets.split(" ").map(&:to_i)
t = gets.split(" ").map(&:to_i)

pairs = Array.new

for i in 0..n-1 do
  pairs << [t[i], s[i]]

end

pairs.sort_by{|pair| pair[1] }
p pairs
ans = 0
time = 0

for j in 0..n-1 do
  if time < pairs[j][1]
    ans += 1
    p j
    time = pairs[j][0]
    # time
  end
end

p ans
