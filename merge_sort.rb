def merge_sort(a,tem =[],temp=[])
  if(a.size==1)
    return a
  else
    len = a.size
    arr1 =  a. slice(0, len / 2)
    arr2 =  a.slice(len/2,len)
    merge(merge_sort(arr1), merge_sort(arr2))
  end
end

def merge(a1,a2)
  temp = []
  while a1.any? && a2.any?
    if a1.first < a2.first
      temp << a1.shift
    else
      temp << a2.shift
    end
  end
  p "my temp is #{temp}"
   return temp.concat(a1).concat(a2)
end

a = [4,5,1,3]

p merge_sort(a)
