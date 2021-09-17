# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    if arr.length == 0 
        return 0
    else 
        p = arr.inject(0){|sum,x| sum + x }
        return p
    end
end

def max_2_sum arr
    if arr.length == 0 
        return 0
    elsif arr.length == 1
        return arr[0]
    else 
        q = arr.sort.last(2).sum
        return q
    end
end

def sum_to_n? arr, n

    if arr.length == 0
        return false
    elsif arr.length == 1
        return false
    else 
        for i in 0...arr.length
            for j in i+1...arr.length
                if arr[i]+arr[j] == n
                    return true
                end
            end
        end
    end
return false
 
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
    if s.length == 0
        return false
    end
    if s[0].match("[a-zA-Z]") 
        if ['a', 'e', 'i', 'o', 'u', 'A', 'E','I','O','U'].include?s[0]
            return false
        else 
            return true
        end
    else 
        return false
    end
end

def binary_multiple_of_4? s
    if s.length == 0
        return false
    end
    if s.chars.all? {|x| x =~ /[01]/}
        if (s.to_i)%4 == 0
            return true
        else 
            return false
        end
    else 
        return false 
    end
  
end

# Part 3

class BookInStock
    def initialize(isbn,price)
        unless price.is_a?(Numeric) and price > 0
            raise ArgumentError.new("Numbers only for price")
        end
        unless isbn != ""
            raise ArgumentError.new("Not valid isbn")
        end
        @isbn = isbn
        @price = price
    end
 
    attr_accessor :isbn
    attr_accessor :price
 
 
 
    def price_as_string
        return "$%.2f" % @price
    end
end
