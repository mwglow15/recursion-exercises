def fibonacci(num)
  result = []
  num.times do |digit|
    if digit == 0
      result.push(0)
    elsif digit == 1
      result.push(1)
    else
      puts digit
      sum = result[digit-2] + result[digit-1]
      result.push(sum)
    end
  end
  result
end

p fibonacci(8)
