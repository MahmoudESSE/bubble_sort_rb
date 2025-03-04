# frozen_string_literal: true

# Sort an array using bubble sort algorithm
#
# @param arr [Array<Integer>] the array to sort
# @param [Array<Integer>] the sorted array
def bubble_sort!(arr)
  return arr if arr.length <= 1

  n = arr.length

  loop do
    swapped = false

    (0...n - 1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break unless swapped

    n -= 1
  end

  arr
end

arr = (1..1000).to_a.shuffle

p bubble_sort!(arr)
