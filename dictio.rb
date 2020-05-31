n = gets.chomp!.to_i
s = gets.chomp!.to_s

t = ""

_s = s.reverse

p s
p _s

n.times do
  if s < _s
    t += s[0]
    s.slice!(0)
  else
    t += _s[0]
    _s.slice!(0)
  end
end

p t
