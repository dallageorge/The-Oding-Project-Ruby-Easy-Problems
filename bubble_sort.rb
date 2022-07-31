def bubble_sort(arrayinput)
  i=1
  while(i<=arrayinput.length-1) do
    j=arrayinput.length-1
    while(j>=i) do
      if(arrayinput[j-1]>arrayinput[j])
        temp = arrayinput[j]
        arrayinput[j]=arrayinput[j-1]
        arrayinput[j-1]=temp
      end
      j=j-1
    end
    i=i+1
  end
  return arrayinput
end
puts(bubble_sort([4,3,78,2,0,2]))