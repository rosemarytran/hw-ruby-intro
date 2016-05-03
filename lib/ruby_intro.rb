# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  return 0 if arr.empty?
  sum = 0
  arr.each { |a| sum += a }
  sum
end

def max_2_sum(arr)
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr.first
  else
    max1 = arr.max
    arr.delete_at(arr.index(max1))
    max2 = arr.max
    sum = max1 + max2
    sum
  end
end

def sum_to_n?(arr, n)
  if arr.empty?
    return false
  elsif arr.length == 1
    return false
  else
    for i in 0...arr.length-1
      for j in i+1...arr.length
          sum = arr[i] + arr[j]
          return true if sum == n
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  welcome = "Hello, #{name}"
  return welcome
end

def starts_with_consonant?(s)
  if s.empty?
    return false
  elsif s !~ /^[A-Za-z]/
    return false
  else
    if s =~ /^[ueoaiUEOAI]/
      return false
    else
      return true
    end
  end
end

def binary_multiple_of_4?(s)
  if s.empty?
    return false
  elsif s =~ /[A-Za-z]/
    return false
  else
    value = 0
    count = 0
    s.reverse.split('').each do |x|
      value += 2**count if x.to_i == 1
      count += 1
    end
    if value % 4 == 0 
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    raise ArgumentError, "Error Message" if @isbn.empty?
    @price = price
    raise ArgumentError, "Error Message" if @price <= 0
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def isbn
    @isbn
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price
    @price
  end
  
  def price_as_string
    return "$#{format("%.2f", price)}"
  end
end
