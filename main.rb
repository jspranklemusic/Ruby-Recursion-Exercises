$LOAD_PATH << '.'
require "my_module"
require "linked_list"

# print MyModule::Greeting + "\n"

# RECURSION


# reverse a string with recursion
def reverse_string(str="mystring",i=0)
   i >= str.length ? "" : reverse_string(str,i+1) + str[i]
end

# flatten array with recursion
def flat(arr1=[],arr2=[],i=0)
  if i >= arr1.length
    return arr2
  else
    if arr1[i].kind_of?(Array)
      flat(arr1[i],arr2) 
    else
      arr2.push(arr1[i])
    end
    return flat(arr1,arr2,i+1)
  end
end

# nth position of fibbonaci recursive
def fibb (num=6,i=0,y=0,x=0,arr=[])
  if i >= num 
    return arr
  else
    temp = x
    x = y > 0 ? (x+y) : 1
    return fibb(num,i+1,temp,x,arr.push(x))
  end
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


#OOP
class Box
  def initialize(width,height,depth)
    @width, @height, @depth = width, height, depth
  end

  def volume
    "My width is #{@width}, my height is #{@height}, and my depth is #{@depth}. My calculated volume is #{@width*@depth*@height}."
  end
end


# John = Person.new("John",25,"man")
# Ashley = Person.new("Ashley",30,"woman")
# Robot = Person.new

# Person.people_count

# Fred = Employee.new("Fred",19,"man")
# Fred.salary = 50000
# Fred.company = "Workforce Inc."

# print Fred.describe


MyList = LinkedList.new
MyList.push(1)
MyList.push(2)
MyList.push(3)
MyList.push(4)
MyList.push(5)

print MyList.all_nodes











 



















