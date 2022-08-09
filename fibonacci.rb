def fibonacci(num)
  result = []
  num.times do |digit|
    if digit == 0
      result.push(0)
    elsif digit == 1
      result.push(1)
    else
      sum = result[digit-2] + result[digit-1]
      result.push(sum)
    end
  end
  result
end

def fibs_rec(num, result=[])
  if num == 1
    result.push(0)
  elsif num == 2
    result = fibs_rec(num-1)
    result.push(1)
  else
    result = fibs_rec(num-1)
    sum = result[num-3] + result[num-2]
    result.push(sum)
  end
end
p fibonacci(8)
p fibs_rec(8)
