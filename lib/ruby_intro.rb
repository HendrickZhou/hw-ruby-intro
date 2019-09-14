# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    sum = 0
    if arr.empty? 
        return sum
    end
    arr.each {|a| sum += a}
    return sum
end

def max_2_sum arr
    if arr.empty?
        return 0
    elsif arr.length == 1
        return arr[0]
    else
        min = arr.min
        max1 = max2 = min
        arr.each do |a|
            if a > max1
                max2 = max1
                max1 = a
            elsif a > max2 and a <= max1
                max2 = a
            end
        end
        return max1 + max2
    end
end

def sum_to_n? arr, n
    if arr.empty?
        return false
    end
    set = Set.new
    arr.each do |a|
        if set.include?(n-a) 
            return true
        end
        set << a
    end
    return false
end

# Part 2

def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
    if s.empty? || s.match(/\b[aeiouAEIOU][a-z]*/) || s.match(/[^a-zA-Z][a-z]*/)
        return false
    else
        return true
    end
end

def binary_multiple_of_4? s
    if !s.empty? && (s.match(/^[10]*00$/) || s.match(/^0*$/))
        return true
    else
        return false
    end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
