def bubble_sort (array)
  new_array = array.map {|e| e.dup}
  sorted = false
  until sorted do
    sorted = true
    for i in 0..new_array.length - 2 do
      if new_array[i] > new_array[i+1]
        sorted = false
        new_array[i], new_array[i+1] = new_array[i+1], new_array[i]
      end
    end
  end
  new_array
end

array = [3, 4, 1, 0, 5, 6, 10, 12, 11]

p bubble_sort(array)
# => [0, 1, 3, 4, 5, 6, 10, 11, 12]