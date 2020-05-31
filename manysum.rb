def solution
  #sは入力文字列
  s = gets.chomp
  size = s.size
  expressions = []
  [' ', '+'].repeated_permutation(size - 1).each do |c|
    p c
    expression = ''
    (size).times do |i|
      print("s[i]=#{s[i]}\n")
      expression << s[i]
      print("c[i]=#{c[i]}\n")
      expression << c[i] if c[i]
      p expression
    end
    expressions << expression.gsub(' ', '')
     p expressions
  end
  answer = 0
  expressions.each do |expression|
    answer = answer + expression.split('+').map(&:to_i).inject(:+)
  end
  answer
end

puts solution
