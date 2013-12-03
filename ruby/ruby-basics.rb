##
# Implement any sorting algorithm.
# Bonus: keep it concise
#

#insertion sort
def sort(arr)
  arra.reduce([]) do |sorted, element|
    index = sorted.find_index do |item|
      element < item
    end
    index ||= sorted.length
    
    
end

##
# Longest Collatz sequence
#
def euler14(n)
  hash = {}
  (0..1000000).each do { |n|
  c = {}
  cache = colatz(n, {})
  return min(keys(cache))
}
end

def colatz(n, cache)
  unless cache.include? n
    collatz_next = 
    if n.even?
       (n/2)
    else
      (3*n+1)
    end
    cache[n] = 1 + collatz(collatz_next, cache)
  end
  cache[n]
end

##
# Return a random permutation of the elements.
#
def shuffle(array)
(0..array.count).each{ |i|
rando = Random.rand(array.count-i) + i
temp = array[i]
array[i] = array[rando]
array[rando] = temp
}
end

##
# Perform a Rot13 transformation on a string.
#
def rot13(string)

end

def query_classes(data, criteria)

end
