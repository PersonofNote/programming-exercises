
def bubble_sort(arr)
  arr.length.times do
    for i in (0...arr.length-1)
      if arr[i] > arr[i+1]
         arr[i],arr[i+1] = arr[i+1],arr[i]
    	end
	end
   end
	puts arr
end
  

 bubble_sort([4,3,78,2,0,2])




def bubble_sort_string(arr)
  times ||= 0
  for h in (0...arr.length)
    for i in (0...arr.length-1)
      if arr[i].length > arr[i+1].length
         arr[i],arr[i+1] = arr[i+1],arr[i]
    end
  times += 1
  puts times
end
end
puts arr
end
  

 bubble_sort_string(["hello","what","a","good","forgotten", "Sunday"])