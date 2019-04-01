def add(x, y)
    x + y
end
  
def subtract(x, y)
    x - y
end
  
def sum(arr)
    result = 0
    arr.each do |i|
      result += i
    end
    return result
end
  
def multiply(x, y)
    x * y
end
  
def power(x, y)
    x ** y
end
  
def factorial(n)
    if n == 0 or n == 1
        return 1
    else
        return n * factorial(n - 1)
    end
end