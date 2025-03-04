# frozen_string_literal: true

# Sort an array using bubble sort algorithm
#
# @param arr [Array<Integer>] the array to sort
# @param [Array<Integer>] the sorted array
def bubble_sort!(arr)
  (0...arr.length).each do |_|
    arr.each_with_index do |elem, elem_idx|
      next if arr[elem_idx + 1].nil? || arr[elem_idx + 1] > elem

      base = arr[elem_idx + 1]
      old_value = base
      arr[elem_idx + 1] = arr[elem_idx]
      arr[elem_idx] = old_value
    end
  end
  arr
end

arr = (1..1000).to_a.shuffle

pp bubble_sort!(arr)
