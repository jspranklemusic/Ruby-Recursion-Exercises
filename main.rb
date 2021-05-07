# reverse a string with recursion
def reverse_string(str="mystring",i=0)
   i >= str.length ? "" : reverse_string(str,i+1) + str[i]
end

# flatten array with recursion
def flat(arr1=[],arr2=[])
  i = 0
  while i < arr1.length
    if arr1[i].kind_of?(Array)
      func(arr1[i],arr2) 
    else
      arr2.push(arr1[i])
    end
    i+=1
  end
  return arr2
end

# return nth position of fibbonaci
def fibb (num = 6,arr = [])
i = y = x = 0
while i < num
   temp = x
   x = y > 0 ? (x+y) : 1
   y = temp
   arr.push(x)
  i+=1
end
  return arr
end



# return all possible substring combos
def find_all_combos(str=[""],arr={})
  if str.length == 1
    return str
  end
  i = 0
  #iterate over each string
  while i < str.length
    j = 0
    if !arr[str[i]]
      arr[str[i]] = true
    end
    while j < str.length
      #create a new string by combining with the other strings
      if j != i
        new_str = str[i] + str[j]

          new_arr = [new_str]
          
            k = 0
            #build a new array with the string
            while k < str.length
              if(k != i && k!=j)
                new_arr.push(str[k])
              end
              k+=1
            end
              arr[new_str] = true

        find_all_combos(new_arr,arr)
      end
      j+=1
    end
    i+=1
  end
  return arr
end

print find_all_combos("abcdefg".split("")).length







 

















