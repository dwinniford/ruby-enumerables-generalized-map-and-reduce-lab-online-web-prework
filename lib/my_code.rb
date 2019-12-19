def map(array)
  i = 0 
  new_array = []
  while i < array.length do 
    new_array << yield(array[i])
    i += 1 
  end 
  new_array
end 

def reduce(array, sv = nil )
  if sv 
    total = sv 
    i = 0 
  else 
    total = array[0]
    i = 1 
  end 
  while i < array.length do 
    
    total = yield(total, array[i])
    i += 1 
    
  end 
  total
end 

def reduce_true_false(array, memo = 0)
  i = 0 
  result = memo
  while i < array.length do 
    if yield(memo, array[i])
      i += 1 
    else return false 
    end 
  end 
end